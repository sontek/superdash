from pyramid.view import view_config
from xmlrpclib import ServerProxy, Fault

from xmlrpclib import ServerProxy, Fault
from urlparse import urlparse

from collections import OrderedDict



class SupervisorServer(object):
    def __init__(self, path):
        self.name = urlparse(path).hostname
        self.connection = ServerProxy(path)
        self.status_data = OrderedDict()

    def refresh(self):
        self.status_data = OrderedDict()
        for process_info in self.connection.supervisor.getAllProcessInfo():
            id_ = '%s:%s' % (process_info['group'], process_info['name'])
            self.status_data[id_] = process_info

    def stop(self, name):
        try:
            return self.connection.supervisor.stopProcess(name)
        except Fault as e:
            if e.faultString.startswith('NOT_RUNNING'):
                return False
            raise

    def start(self, name):
        try:
            return self.connection.supervisor.startProcess(name)
        except Fault as e:
            if e.faultString.startswith('ALREADY_STARTED'):
                return False
            raise

    def start_all(self):
        return self.connection.supervisor.startAllProcesses()

    def restart(self, name):
        self.stop(name)
        return self.start(name)


@view_config(route_name='home', renderer='superdash:templates/list.mako')
def my_view(request):
    server_configs = request.registry.settings.get(
        'superdash.servers', ''
    ).split()
    servers = [SupervisorServer(x) for x in server_configs]

    data = {}
    for server in servers:
        server.refresh()
        data[server.name] = server.status_data

    return {'project': 'superdash', 'data': data}
