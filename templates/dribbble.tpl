<div class="profile dribbble modal fade-large" id="dribbble-profile" data-profile-name="dribbble">
  {{#with user}}
  <div class="profile-info">
    <button class="close" data-dismiss="modal">×</button>
    <a href="http://dribbble.com/{{ username }}" class="profile-avatar">
      <img src="{{ avatar_url }}" alt="{{name}}" />
    </a>
    <div class="profile-name">
      <h2><a href="http://dribbble.com/{{ username }}">{{ name }}</a></h2>
      <h3><a href="http://dribbble.com/{{ username }}">@{{ username}}</a></h3>
    </div>
    <p class="profile-location-url">
      {{#if location }}
      <span>{{ location }}</span>
      <span class="divider">·</span>
      {{/if}}
      {{#if website_url }}
      <span><a href="{{ website_url }}">{{ website_url }}</a></span>
      {{/if}}
    </p>
  </div>
  <ul class="profile-stats">
    <li><a href="http://dribbble.com/{{ username }}"><strong>{{ shots_count }}</strong> shots</a></li>
    <li><a href="http://dribbble.com/{{ username }}" class="shots-likes-received"><strong>{{ likes_received_count }}</strong> likes received</a></li>
    <li><a href="http://dribbble.com/{{ username }}/following"><strong>{{ following_count }}</strong> following</a></li>
    <li><a href="http://dribbble.com/{{ username }}/followers"><strong>{{ followers_count }}</strong> followers</a></li>
  </ul>
  <div class="profile-info-footer">
    <a href="http://dribbble.com/{{ username }}" class="btn">Follow on Dribbble</a>
  </div>
  {{/with}}
  <ul class="profile-shots">
    {{#each shots}}
    <li>
      <a href="{{ url }}" class="profile-shot">
        <img src="{{ image_url }}" alt="{{ title }}" />
      </a>
      <span class="profile-shot-title">{{ title }}</span>
      <ul class="profile-shot-stats">
        <li><a href="" class="profile-watchers">{{ views_count }}</a></li>
        <li><a href="" class="profile-comments">{{ comments_count }}</a></li>
        <li><a href="" class="profile-likes">{{ likes_count }}</a></li>
      </ul>
    </li>
    {{/each}}
  </ul>
</div>