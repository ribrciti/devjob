<template>
  <div class="py-16">
    <div class="relative p-4">
      <div class="p-10">
        <form @submit.prevent="submit" enctype="multipart/form-data">
          <div v-if="step === 1">
            <JobInfo :job="job" @nextStep="handleNextStep"/>
          </div>

          <div v-if="step === 2">
            <JobPreview :job="job" @nextStep="handleNextStep" @prevStep="handlePrevStep" />
          </div>

          <div v-if="step === 3">
            <JobPurchase :job="job" @prevStep="handlePrevStep" />
          </div>
        </form>
      </div>
    </div>
  </div>
</template>


<script>

//import rootData from "store";
import JobInfo from "./steps/JobInfo";
import JobPreview from "./steps/JobPreview";
import JobPurchase from "./steps/JobPurchase";

export default {
  components: {
    JobInfo,
    JobPreview,
    JobPurchase,
  },
  data() {
    return {
      step: this.$root.form.step,
      job: this.$root.form.job,
    };
  },
  methods: {
    handleNextStep () {
      this.step++;
    },
    handlePrevStep() {
      this.step--;
    },
  }
};

</script>


