<template>
    <div class="all-content">
    <div class="sell-content" v-for='token in serie' :key=token.collection_id :slug="title.col_slug">
        <div class="texts">
            <p class="title-serie">
                Title: {{token.col_title}}
            </p>
            <p class="serie-description">
                Description: {{token.col_description}}
            </p>
            <div class="hr-line">
                <button>
                <router-link :to="{ name: 'Serie', params: { slug: token.collection_id } }"> View Collection</router-link>
                </button>
            </div>
        </div>
        <div class="gallery">
            <img :src='token.col_image' alt="">
        </div>
    </div>
    <vue-metamask
        userMessage="msg"
        @onComplete="onComplete"
        v-if="metamaskConnected"
        >
    </vue-metamask>
    </div>
</template>

<script>
import axios from 'axios';
import { ref } from 'vue';
import VueMetamask from 'vue-metamask';
import { mapGetters } from 'vuex';

export default {
  components: {
    VueMetamask
  },
  computed: {
    ...mapGetters({
      sm: 'sm',
      isLoggedIn: 'isLoggedIn',
      metamaskConnected: 'metamaskConnected'
    })
  },
  data () {
    return {
      imageURL: '',
      title: '',
      description: '',
      collection_name: '',
      msg: 'This is metamask'
    };
  },
  setup () {
    const serie = ref([]);

    const load = () => axios.get('http://127.0.0.1:8000/serie/get_collections/')
      .then(response => {
        serie.value = response.data;
      })
      .catch(error => {
        console.log(error);
      });
    load();
    return { serie };
  },
  methods: {
    onComplete (data) {
      console.log('data:', data);
    }
  }
};
</script>

<style scoped src='../assets/styles/active_page.css'></style>
