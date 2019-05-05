%include header title='Project List'
<div class="card">
    <div class="card-body">

<h2 class="card-title">Project List</h2>
      <ul class="list-group list-group-flush">
		%for row in rows:
		  <li class="list-group-item">
			  <a href="{{row[0]}}" target="_blank">
				  {{row[1]}}
			  </a> -
			  {{row[2]}}
		  </li>
		%end
	  </ul>
	</div>
</div>
%include footer