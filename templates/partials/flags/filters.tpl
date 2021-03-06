<div class="text-center">
	<div class="panel panel-default">
		<div class="panel-body collapse" id="flags-daily-wrapper" aria-expanded="false">
			<div><canvas id="flags:daily" height="150"></canvas></div>
		</div>
		<div class="panel-footer" aria-controls="#flags-daily-wrapper"><small>[[flags:graph-label]]</small>&nbsp;<span class="caret"></span></div>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">[[flags:quick-filters]]</h3>
	</div>
	<div class="panel-body">
		<ul>
			<li><a href="{config.relative_path}/flags?quick=mine">[[flags:filter-quick-mine]]</a></li>
		</ul>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-heading">
		<h3 class="panel-title">[[flags:filters]]</h3>
	</div>
	<div class="panel-body">
		<form role="form" component="flags/filters">
			<fieldset>
				<div class="form-group">
					<label for="sort">[[flags:sort]]</label>
					<select class="form-control" id="sort" name="sort">
						<option value="newest">[[flags:sort-newest]]</option>
						<option value="oldest">[[flags:sort-oldest]]</option>
						<option value="reports">[[flags:sort-reports]]</option>
					</select>
				</div>
				<div class="form-group">
					<label for="filter-state">[[flags:filter-state]]</label>
					<select class="form-control" id="filter-state" name="state">
						<option value="">[[flags:state-all]]</option>
						<option value="open">[[flags:state-open]]</option>
						<option value="wip">[[flags:state-wip]]</option>
						<option value="resolved">[[flags:state-resolved]]</option>
						<option value="rejected">[[flags:state-rejected]]</option>
					</select>
				</div>

				<div class="form-group">
					<label for="filter-type">[[flags:filter-type]]</label>
					<select class="form-control" id="filter-type" name="type">
						<option value="">[[flags:filter-type-all]]</option>
						<option value="post">[[flags:filter-type-post]]</option>
						<option value="user">[[flags:filter-type-user]]</option>
					</select>
				</div>

				<div class="form-group">
					<label for="filter-cid">[[flags:filter-cid]]</label>
					<select class="form-control" id="filter-cid" name="cid" multiple="true">
						<option value="">[[flags:filter-cid-all]]</option>
						{{{each categories}}}
						<option value="@key">@value</option>
						{{{end}}}
					</select>
				</div>
			</fieldset>

			<fieldset class="collapse" id="more-filters" aria-expanded="false">
				<div class="form-group">
					<label for="filter-assignee">[[flags:filter-assignee]]</label>
					<input type="number" class="form-control" id="filter-assignee" name="assignee" min="0" />
				</div>

				<div class="form-group">
					<label for="filter-targetUid">[[flags:filter-targetUid]]</label>
					<input type="number" class="form-control" id="filter-targetUid" name="targetUid" min="0" />
				</div>

				<div class="form-group">
					<label for="filter-reporterId">[[flags:filter-reporterId]]</label>
					<input type="number" class="form-control" id="filter-reporterId" name="reporterId" min="0" />
				</div>
			</fieldset>

			<button type="button" class="btn btn-link btn-block" data-toggle="collapse" data-target="#more-filters" aria-controls="#more-filters">[[flags:more-filters]]&nbsp;<span class="caret"></span></button>
			<button type="button" id="apply-filters" class="btn btn-primary btn-block">[[flags:apply-filters]]</button>
		</form>
	</div>
</div>