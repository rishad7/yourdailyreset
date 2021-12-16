<template>
    <div id="header" class="flex flex-col mb-61">
        <div class="header w-full bg-white h-61 fixed z-50">
            <div class="h-full container mx-auto">
                <div class="w-full h-full flex justify-between items-center px-10 xs:px-20 lg:px-0">
                    <div>
                        <img class="object-contain h-44-25" :src="require('images/header/logo.png')" alt="logo" />
                    </div>
                    <div class="flex justify-end items-center">
                        <a href="https://www.facebook.com/ReSetYourEveryday" target="_blank" class="mr-4"><i class="fa fa-facebook-square f-27 text-color-1 social-link"></i></a>
                        <a href="https://twitter.com/ReSet_Everyday" target="_blank" class="mr-4"><i class="fa fa-twitter f-27 text-color-1 social-link"></i></a>
                        <a href="https://www.instagram.com/resetyoureveryday" target="_blank"><i class="fa fa-instagram f-27 text-color-1 social-link"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>

export default {
  name: "site-header",
}
</script>

<style lang="scss" scoped>
    .text-color-1 {
        color: #8a40e1;
    }
    .header {
        border-bottom: #8a40e1 1px solid;
    }
    .social-link:hover {
        color: #D4AF37;
    }
    @responsive {
        .mb-61 {
            margin-bottom: 61px;
        }
        .h-61 {
            height: 61px;
        }
        .h-44-25 {
            height: 44.25px;
        }
        .f-27 {
            font-size: 27px;
        }
    }
</style>