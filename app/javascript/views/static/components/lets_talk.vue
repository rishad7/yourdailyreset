<template>
    <modal name="lets-talk-modal" :width="getWidth" height="auto">
        <div class="flex flex-col items-center p-8 sm:p-16">
            <div class="w-full flex justify-between items-center flex-wrap">
                <h1 class="text-color-1 text-2xl font-semibold">Let’s speak!</h1>
                <div>
                    <svg @click="hideModal" xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-color-2 cursor-pointer" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </div>
            </div>
            <div :style="getHeight" class="w-full mt-8 overflow-y-auto">
                <form class="flex flex-col" autocomplete="off" @submit.prevent="submitForm">
                    <div class="w-full flex flex-row flex-wrap">
                        <div class="w-full sm:w-3/5">
                            <label class="text-color-3 mr-0 sm:mr-4" for="name">Name</label>
                            <input id="name" v-model.trim="form.name" class="form-input w-full sm:w-255 h-10 sm:h-51 px-4" type="text" placeholder="">
                        </div>
                        <div class="mt-4 sm:mt-0 w-full sm:w-2/5 flex flex-col sm:flex-row items-start sm:items-center">
                            <label class="text-color-3 mr-0 sm:mr-4" for="age_group">Age group</label>
                            <select id="age_group" v-model.trim="form.age_group" class="form-input h-10 sm:h-51 px-4 w-full sm:w-auto flex-grow input-select-xs sm:input-select">
                                <option value="13-19">13-19</option>
                                <option value="20-30">20-30</option>
                                <option value="31-40+">31-40+</option>
                            </select>
                        </div>
                    </div>
                    <div class="mt-4 w-full flex flex-row flex-wrap">
                        <div class="w-full sm:w-3/5">
                            <label class="text-color-3 mr-4" for="email">Email</label>
                            <input id="email" v-model.trim="form.email" class="form-input w-full sm:w-255 h-10 sm:h-51 px-4" type="text" placeholder="">
                        </div>
                        <div class="mt-4 sm:mt-0 w-full sm:w-2/5 flex flex-col sm:flex-row items-start sm:items-center">
                            <label class="text-color-3 mr-0 sm:mr-4" for="gender">Gender</label>
                            <select id="gender" v-model.trim="form.gender" class="form-input h-10 sm:h-51 px-4 w-full sm:w-auto flex-grow input-select-xs sm:input-select">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                    </div>
                    <div class="mt-4 w-full flex flex-row flex-wrap items-center">
                        <div class="w-full sm:w-1/5">
                            <label class="text-color-3" for="organization">Organization</label>
                        </div>
                        <div class="w-full sm:w-4/5 flex">
                            <input id="organization" v-model.trim="form.organization" class="form-input flex-grow h-10 sm:h-51 px-4" type="text" placeholder="">
                        </div>
                    </div>
                    <div class="mt-4 w-full flex flex-row flex-wrap items-center">
                        <div class="w-full sm:w-1/5">
                            <label class="text-color-3" for="location">Location</label>
                        </div>
                        <div class="w-full sm:w-4/5 flex">
                            <input id="location" v-model.trim="form.location" class="form-input flex-grow h-10 sm:h-51 px-4" type="text" placeholder="">
                        </div>
                    </div>
                    <div class="mt-4 w-full flex flex-row flex-wrap items-start">
                        <div class="w-full sm:w-1/5">
                            <label class="text-color-3" for="interests">Interests</label>
                        </div>
                        <div id="interests" class="w-full sm:w-4/5 flex flex-row flex-wrap">
                            <div class="w-full sm:w-1/2 flex flex-col">
                                <div class="flex items-center">
                                    <input type="checkbox" class="input-checkbox-xs xs:input-checkbox" id="interest1" v-model.trim="form.interests" value="Workplace well-being">
                                    <label class="ml-1" for="interest1">Workplace well-being</label>
                                </div>
                                <div class="mt-1 flex items-center">
                                    <input type="checkbox" class="input-checkbox-xs xs:input-checkbox" id="interest2" v-model.trim="form.interests" value="Good habits">
                                    <label class="ml-1" for="interest2">Good habits</label>
                                </div>
                                <div class="mt-1 flex items-center">
                                    <input type="checkbox" class="input-checkbox-xs xs:input-checkbox" id="interest3" v-model.trim="form.interests" value="Mental health management">
                                    <label class="ml-1" for="interest3">Mental health management</label>
                                </div>
                            </div>
                            <div class="w-full sm:w-1/2 flex flex-col">
                                <div class="flex items-center">
                                    <input type="checkbox" class="input-checkbox-xs xs:input-checkbox" id="interest4" v-model.trim="form.interests" value="Stress management">
                                    <label class="ml-1" for="interest4">Stress management</label>
                                </div>
                                <div class="mt-1 flex items-center">
                                    <input type="checkbox" class="input-checkbox-xs xs:input-checkbox" id="interest5" v-model.trim="form.interests" value="COVID-19 support">
                                    <label class="ml-1" for="interest5">COVID-19 support</label>
                                </div>
                            </div>
                            <div class="mt-2 w-full flex items-center">
                                <label class="text-color-3 mr-4" for="other">Other</label>
                                <input id="other" v-model.trim="other" class="form-input flex-grow h-10 sm:h-51 px-4" type="text" placeholder="Please specify">
                            </div>
                        </div>
                    </div>
                    <div class="mt-4 flex justify-end">
                        <button type="submit" class="submit-btn h-10 sm:h-51 text-white px-4 sm:px-6 rounded-full">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </modal>
</template>
<script>
export default {
    name: "lets-talk",
    data() {
        return {
            form: {
              name: "",
              age_group: "",
              email: "",
              gender: "",
              organization: "",
              location: "",
              interests: [],
          },
          other: "",
        };
    },
    computed: {
        getWidth() {
            if(window.innerWidth > 767) {
                return "727px";
            } else {
                const width = window.innerWidth - 40;
                return width + 'px';
            }
        },
        getHeight() {
            if(window.innerWidth > 767) {
                return { height: "auto" };
            } else {
                return { height: "500px" };
            }
        },
        isValidForm() {
            if(this.form.name === '' || this.form.age_group === '' || this.form.email === '' || this.form.gender === '' || this.form.organization === '' || this.form.location === '') {
                return false;
            } else {
                if(this.other !== '') {
                    this.form.interests.push(this.other);
                }
                return true;
            }
        }
    },
    methods: {
        hideModal() {
            this.$modal.hide('lets-talk-modal');
        },
        submitForm() {
            if(this.isValidForm) {
                fetch("/registration", {
                    method: "POST",
                    headers: {
                    "Content-Type": "application/json",
                    },
                    body: JSON.stringify(this.form),
                }).then((response) => response.json()).then((data) => {
                    if(data.code == "0") {
                        alert(data.msg)
                    }else if (data.code == "1") {
                        this.hideModal();
                        this.clearInputFields();
                    } else {
                        alert('Something went wrong. Please try later')
                    }
                }).catch((error) => {
                    console.log(error);
                });
            }
        },
        clearInputFields() {
            this.form.name = "";
            this.form.age_group = "";
            this.form.email = "";
            this.form.gender = "";
            this.form.organization = "";
            this.form.location = "";
            this.form.interests = [];
            this.other = "";
        },
    },
}
</script>
<style lang="scss" scoped>
    .text-color-1 {
        color: #8C3EE8;
    }
    .text-color-2 {
        color: #d2cece;
    }
    .text-color-3 {
        color: #707070;
    }
    .form-input {
        outline: 0;
        border-radius: 30px;
        border: 1px solid #D2CECE;
    }
    .submit-btn {
        background-color: #8C3EE8;
    }
    @responsive {
        .w-255 {
            width: 255px;
        }
        .w-140 {
            width: 140px;
        }
        .h-51 {
            height: 51px;
        }
        .input-select-xs {
            -webkit-appearance: none !important;
            -moz-appearance: none !important;
            background: transparent !important;
            background-image: url('~images/home/select-down-arrow.svg') !important;
            background-repeat: no-repeat !important;
            background-position-x: 95% !important;
            background-position-y: 10px !important;
        }
        .input-select {
            -webkit-appearance: none !important;
            -moz-appearance: none !important;
            background: transparent !important;
            background-image: url('~images/home/select-down-arrow.svg') !important;
            background-repeat: no-repeat !important;
            background-position-x: 90% !important;
            background-position-y: 14px !important;
        }
        .input-checkbox {
            width: 27px;
            height: 27px;
            background-color: white;
            border-radius: 50%;
            vertical-align: middle;
            border: 1px solid #D2CECE;
            appearance: none;
            -webkit-appearance: none;
            outline: none;
            cursor: pointer;
        }
        .input-checkbox-xs {
            width: 20px;
            height: 20px;
            background-color: white;
            border-radius: 50%;
            vertical-align: middle;
            border: 1px solid #D2CECE;
            appearance: none;
            -webkit-appearance: none;
            outline: none;
            cursor: pointer;
        }
        .input-checkbox:checked {
            background-color: #D2CECE;
        }
        .input-checkbox-xs:checked {
            background-color: #D2CECE;
        }
    }
</style>
<style lang="scss">
    .vm--modal { 
        border-radius: 49px;
    }
</style>