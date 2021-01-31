<template>
  <div>
    <h2>Job Info</h2>
    <a @click.prevent="next()" class="btn btn-outline-primary">Next</a>
  </div>
</template>

<script>

  export default {
    props: {
      job: {
        type: Object,
        required: true,
      },
    },
    methods: {
      next() {
        this.$emit("nextStep");
      },
    },
  };

</script>

<style lang="scss" scoped>

</style>
