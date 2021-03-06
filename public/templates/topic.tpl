<div class="topic">
	<ol class="breadcrumb">
		<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<a href="/" itemprop="url"><span itemprop="title">[[global:home]]</span></a>
		</li>
		<li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<a href="/category/{category_slug}" itemprop="url"><span itemprop="title">{category_name}</span></a>
		</li>
		<li class="active" itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
			<span itemprop="title">{topic_name} <a target="_blank" href="../{topic_id}.rss"><i class="icon-rss-sign"></i></a></span>
		</li>
		<div id="thread_active_users" class="active-users pull-right hidden-xs"></div>
	</ol>

	<ul id="post-container" class="container" data-tid="{topic_id}">
		<!-- BEGIN main_posts -->
			<a id="post_anchor_{main_posts.pid}" name="{main_posts.pid}"></a>
			<li class="row post-row main-post" data-pid="{main_posts.pid}" data-uid="{main_posts.uid}" data-username="{main_posts.username}" data-deleted="{main_posts.deleted}" itemscope itemtype="http://schema.org/Article">
				<div class="col-md-12">
					<div class="post-block">
						<meta itemprop="datePublished" content="{main_posts.relativeTime}">
						<meta itemprop="dateModified" content="{main_posts.relativeEditTime}">
						<meta itemprop="url" content="/topic/{slug}/">
						<a class="avatar" href="/user/{main_posts.userslug}">
							<img itemprop="image" src="{main_posts.picture}" align="left" class="img-thumbnail" width=150 height=150 /><br />
						</a>
						<h3>
							<p id="topic_title_{main_posts.pid}" class="topic-title" itemprop="name">{topic_name}</p>
						</h3>

						<div class="topic-buttons">
							<div class="btn-group">
								<button class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" type="button" title="[[topic:posted_by]] {main_posts.username}">
									<span class="username-field" href="/user/{main_posts.userslug}" itemprop="author" itemscope itemtype="http://schema.org/Person">{main_posts.username}&nbsp;</span>
									<span class="caret"></span>
								</button>
							    <ul class="dropdown-menu">
									<li><a href="/user/{main_posts.userslug}"><i class="icon-user"></i> [[topic:profile]]</a></li>
									<li><div class="chat"><i class="icon-comment"></i> [[topic:chat]]</div></li>
							    </ul>
							</div>

							<div class="btn-group">
								<button class="btn btn-sm btn-default follow" type="button" title="Be notified of new replies in this topic"><i class="icon-eye-open"></i></button>
								<button class="favourite btn btn-sm btn-default {main_posts.fav_button_class}" type="button">
									<span class="favourite-text">[[topic:favourite]]</span>
									<span class="post_rep_{main_posts.pid}">{main_posts.post_rep} </span><i class="{main_posts.fav_star_class}"></i>
								</button>
							</div>
							<div class="btn-group">
								<button class="btn btn-sm btn-default quote" type="button" title="[[topic:quote]]"><i class="icon-quote-left"></i></button>
								<button class="btn btn-sm btn-primary btn post_reply" type="button">[[topic:reply]] <i class="icon-reply"></i></button>
							</div>

							<div class="btn-group pull-right post-tools">
								<button class="btn btn-sm btn-default link" type="button" title="[[topic:link]]"><i class="icon-link"></i></button>
								<button class="btn btn-sm btn-default edit {main_posts.display_moderator_tools}" type="button" title="[[topic:edit]]"><i class="icon-pencil"></i></button>
								<button class="btn btn-sm btn-default delete {main_posts.display_moderator_tools}" type="button" title="[[topic:delete]]"><i class="icon-trash"></i></button>

							</div>

							<input id="post_{main_posts.pid}_link" value="" class="pull-right" style="display:none;"></input>

						</div>

						<div id="content_{main_posts.pid}" class="post-content" itemprop="articleBody">{main_posts.content}</div>
						<div class="post-signature">{main_posts.signature}</div>
						<div class="post-info">
							<span class="pull-left">
								{main_posts.additional_profile_info}
							</span>
							<span class="pull-right">
								posted <span class="relativeTimeAgo timeago" title="{main_posts.relativeTime}"></span>
								<span class="{main_posts.edited-class}">| last edited by <strong><a href="/user/{main_posts.editorslug}">{main_posts.editorname}</a></strong></span>
								<span class="timeago" title="{main_posts.relativeEditTime}"></span>
							</span>
							<div style="clear:both;"></div>
						</div>
					</div>
				</div>
			</li>
		<!-- END main_posts -->

		<!-- BEGIN posts -->
			<a id="post_anchor_{posts.pid}" name="{posts.pid}"></a>
			<li class="row post-row sub-posts" data-pid="{posts.pid}" data-uid="{posts.uid}" data-username="{posts.username}" data-deleted="{posts.deleted}" itemscope itemtype="http://schema.org/Comment">
				<meta itemprop="datePublished" content="{posts.relativeTime}">
				<meta itemprop="dateModified" content="{posts.relativeEditTime}">
				<div class="col-md-1 profile-image-block hidden-xs hidden-sm">
					<a href="/user/{posts.userslug}">
						<img src="{posts.picture}" align="left" class="img-thumbnail" itemprop="image" />
					</a>
					<span class="label label-danger {posts.show_banned}">[[topic:banned]]</span>
				</div>
				<div class="col-md-11">
					<div class="post-block">
						<div class="topic-buttons">
							<div class="btn-group">
								<button class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" type="button" title="Posted by {posts.username}">
									<span class="username-field" href="/user/{posts.userslug}" itemprop="author">{posts.username}&nbsp;</span>
									<span class="caret"></span>
								</button>

							    <ul class="dropdown-menu">
									<li><a href="/user/{posts.userslug}"><i class="icon-user"></i> [[topic:profile]]</a></li>
									<li><div class="chat"><i class="icon-comment"></i> [[topic:chat]]</div></li>
							    </ul>
							</div>

							<div class="btn-group">
								<button class="favourite btn btn-sm btn-default {posts.fav_button_class}" type="button">
									<span class="favourite-text">[[topic:favourite]]</span>
									<span class="post_rep_{posts.pid}">{posts.post_rep} </span><i class="{posts.fav_star_class}"></i>
								</button>
							</div>
							<div class="btn-group">
								<button class="btn btn-sm btn-default quote" type="button" title="[[topic:quote]]"><i class="icon-quote-left"></i></button>
								<button class="btn btn-sm btn-primary btn post_reply" type="button">[[topic:reply]] <i class="icon-reply"></i></button>
							</div>

							<div class="btn-group pull-right post-tools">
								<button class="btn btn-sm btn-default link" type="button" title="[[topic:link]]"><i class="icon-link"></i></button>
								<button class="btn btn-sm btn-default edit {posts.display_moderator_tools}" type="button" title="[[topic:edit]]"><i class="icon-pencil"></i></button>
								<button class="btn btn-sm btn-default delete {posts.display_moderator_tools}" type="button" title="[[topic:delete]]"><i class="icon-trash"></i></button>
							</div>

							<input id="post_{posts.pid}_link" value="" class="pull-right" style="display:none;"></input>
						</div>

						<div id="content_{posts.pid}" class="post-content" itemprop="text">{posts.content}</div>
						<div class="post-signature">{posts.signature}</div>
						<div class="post-info">
							<span class="pull-left">
								{posts.additional_profile_info}
							</span>
							<span class="pull-right">
								posted <span class="relativeTimeAgo timeago" title="{posts.relativeTime}"></span>
								<span class="{posts.edited-class}">| last edited by <strong><a href="/user/{posts.editorslug}">{posts.editorname}</a></strong></span>
								<span class="timeago" title="{posts.relativeEditTime}"></span>
							</span>
							<div style="clear:both;"></div>
						</div>
					</div>
				</div>
			</li>
		<!-- END posts -->
	</ul>

	<div id="loading-indicator" style="text-align:center;" class="hide" done="0">
		<i class="icon-spinner icon-spin icon-large"></i>
	</div>

	<hr />

	<div class="topic-main-buttons">
		<button id="post_reply" class="btn btn-primary btn-lg post_reply" type="button">[[topic:reply]]</button>
		<div class="btn-group pull-right" id="thread-tools" style="visibility: hidden;">
			<button class="btn btn-default btn-lg dropdown-toggle" data-toggle="dropdown" type="button">[[topic:thread_tools.title]] <span class="caret"></span></button>
			<ul class="dropdown-menu">
				<li><a href="#" id="pin_thread"><i class="icon-pushpin"></i> [[topic:thread_tools.pin]]</a></li>
				<li><a href="#" id="lock_thread"><i class="icon-lock"></i> [[topic:thread_tools.lock]]</a></li>
				<li class="divider"></li>
				<li><a href="#" id="move_thread"><i class="icon-move"></i> [[topic:thread_tools.move]]</a></li>
				<li class="divider"></li>
				<li><a href="#" id="delete_thread"><span class="text-error"><i class="icon-trash"></i> [[topic:thread_tools.delete]]</span></a></li>
			</ul>
		</div>
	</div>

	<div class="mobile-author-overlay">
		<div class="row">
			<div class="col-xs-3">
				<img id="mobile-author-image" src="" width=50 height=50 />
			</div>
			<div class="col-xs-9">
				<h4><div id="mobile-author-overlay"></div></h4>
			</div>
		</div>
	</div>

	<div id="move_thread_modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="Move Topic" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h3>Move Topic</h3>
				</div>
				<div class="modal-body">
					<p id="categories-loading"><i class="icon-spin icon-refresh"></i> [[topic:load_categories]]</p>
					<ul class="category-list"></ul>
					<p>
						[[topic:disabled_categories_note]]
					</p>
					<div id="move-confirm" style="display: none;">
						<hr />
						<div class="alert alert-info">This topic will be moved to the category <strong><span id="confirm-category-name"></span></strong></div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal" id="move_thread_cancel">[[global:buttons.close]]</a>
					<button type="button" class="btn btn-primary" id="move_thread_commit" disabled>[[topic:confirm_move]]</a>
				</div>
			</div>
		</div>
	</div>

</div>

<input type="hidden" template-variable="expose_tools" value="{expose_tools}" />
<input type="hidden" template-variable="topic_id" value="{topic_id}" />
<input type="hidden" template-variable="locked" value="{locked}" />
<input type="hidden" template-variable="deleted" value="{deleted}" />
<input type="hidden" template-variable="pinned" value="{pinned}" />
<input type="hidden" template-variable="topic_name" value="{topic_name}" />
<input type="hidden" template-variable="postcount" value="{postcount}" />
