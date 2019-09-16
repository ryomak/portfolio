<template>
  <div>
    <b-navbar>
      <template slot="brand">
        <b-navbar-item tag="router-link" :to="{ path: '/' }">
          <img
            src="https://raw.githubusercontent.com/buefy/buefy/dev/static/img/buefy-logo.png"
            alt="Lightweight UI components for Vue.js based on Bulma"
          />
        </b-navbar-item>
      </template>
      <template slot="start">
        <b-navbar-item v-for="(item, key) in items" :key="key" :href="item.to">
          <b-icon :icon="item.icon"> </b-icon>
          <span>{{ item.title }}</span>
        </b-navbar-item>
        <b-navbar-dropdown label="SNS">
          <b-navbar-item
            v-for="(s, index) in sns"
            :key="index"
            :href="s.to"
            aria-role="menuitem"
            target="_blank"
          >
            <b-icon :icon="s.icon" :pack="s.pack"></b-icon>
            <span>{{ s.title }}</span>
          </b-navbar-item>
        </b-navbar-dropdown>
      </template>
    </b-navbar>
    <div class="container">
      <nuxt />
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      sns: [
        {
          title: 'github',
          icon: 'github-face',
          pack: 'mdi',
          to: 'https://github.com/ryomak'
        },
        {
          title: 'twitter',
          icon: 'twitter',
          pack: 'mdi',
          to: 'https://twitter.com/kurisuuu3'
        },
        {
          title: 'instagram',
          icon: 'instagram',
          pack: 'mdi',
          to: 'https://www.instagram.com/kuriiiii13'
        }
      ],
      items: [
        {
          title: 'Home',
          icon: 'home',
          to: '/'
        },
        {
          title: 'Works',
          icon: 'console',
          to: 'works'
        },
        {
          title: 'Blog',
          icon: 'desktop-mac',
          to: 'https://ryomak.info'
        },
        {
          title: 'Contact',
          icon: 'email',
          to: 'contact'
        }
      ]
    }
  }
}
</script>
