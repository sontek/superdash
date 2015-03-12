<%inherit file="superdash:templates/layout.mako" />

<%def name="body()">
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <table class="table table-bordered">
          <thead>
            <tr>
              <th>Name</th>
              <th>State</th>
              <th>Description</th>
              <th>Server</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
          % for server in data:
            % for key in data[server]:
              <% process = data[server][key] %>
              % if process['statename'] == 'RUNNING':
                <tr class='success'>
              % elif process['statename'] == 'STOPPED':
                <tr class='warning'>
              % else:
                <tr>
              % endif
                <td>
                  ${key}
                </td>
                <td>
                  ${process['statename']}
                </td>
                <td>
                  Description
                </td>
                <td>
                  ${server}
                </td>
                <td>
                  Start | Stop | Restart | Tail
                </td>
              </tr>
            % endfor
          % endfor
          </tbody>
      </table>
    </div>
  </div>
</div>
<!-- /container -->
</%def>
