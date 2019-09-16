<template>
  <div>
    <header>
      <div class="menu">
        <div class="bar-1"></div>
        <div class="bar-2"></div>
        <div class="bar-3"></div>
      </div>
      <div class="menu-detail" :class="{ open: isOpen }">
        <div
          v-for="(item, key) in items"
          :key="key"
          :href="item.to"
          :target="item.blank ? '_blank' : false"
        >
          <b-icon :icon="item.icon"> </b-icon>
          <span>{{ item.title }}</span>
        </div>
      </div>
    </header>
    <div class="container">
      <nuxt />
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      isOpen: false
    }
  },
  computed: {
    items() {
      return [
        {
          title: 'Home',
          icon: 'home',
          to: {
            value: '/',
            blank: false
          }
        },
        {
          title: 'Works',
          icon: 'console',
          to: {
            value: 'works',
            blank: false
          }
        },
        {
          title: 'Blog',
          icon: 'desktop-mac',
          to: {
            value: 'https://ryomak.info',
            blank: true
          }
        },
        {
          title: 'Contact',
          icon: 'email',
          to: {
            value: 'contact',
            blank: false
          }
        },
        {
          title: 'github',
          icon: 'github-face',
          to: {
            value: 'https://github.com/ryomak',
            blank: true
          }
        },
        {
          title: 'twitter',
          icon: 'twitter',
          to: {
            value: 'https://twitter.com/kurisuuu3',
            blank: true
          }
        },
        {
          title: 'instagram',
          icon: 'instagram',
          to: {
            value: 'https://www.instagram.com/kuriiiii13',
            blank: true
          }
        }
      ]
    }
  }
}
</script>
<style lang="scss">
.menu-detail {
  position: fixed;
  background: rgba(#eee, 0.7);
  padding: 1rem;
}
.open {
  height: 100vh;
}
</style>
