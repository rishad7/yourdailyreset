<template>
    <div id="home" class="flex flex-col">
        <div id="eo-section-1" class="bg1">
            <div class="container mx-auto">
                <div class="flex flex-row flex-wrap pb-10 xs:pb-20 px-10 xs:px-10 xs:px-20 lg:px-0">
                    <div class="w-full md:w-2/5 flex flex-col justify-end">
                        <div class="pt-10 xs:pt-16 md:pt-0">
                            <div class="text-color-1 text-4xl xs:text-5xl font-semibold leading-none">$1 Trillion USD</div>
                            <div class="text-color-1 text-base xs:text-xl mt-4 xs:mt-8 max-w-335 lh-1-5">That’s the estimated annual cost to the world economy in lost productivity as a result of depression and anxiety.*</div>
                            <div class="flex flex-col mt-8 xs:mt-16">
                                <div class="text-base xs:text-xl text-color-3">Protect your team.</div>
                                <div class="text-base xs:text-xl text-color-1 mt-2">Learn more.</div>
                                <div class="mt-2"><img @click="scrollToElement('eo-section-2')" :src="require('images/home/ionic-ios-arrow-dropdown.svg')" alt="down-arrow" width="32" height="32" class="cursor-pointer" /></div>
                                <div class="text-color-1 text-base mt-1 xs:mt-4">*Source: WHO</div>
                            </div>
                        </div>
                    </div>
                    <div class="w-full md:w-3/5 pt-8">
                        <img1></img1>
                    </div>
                </div>
            </div>
        </div>
        <div id="eo-section-2" class="bg2">
            <div class="container mx-auto">
                <div class="flex flex-row flex-wrap pt-10 sm:pt-16 md:pt-32 px-10 xs:px-20 lg:px-0">
                    <div class="w-full sm:w-1/2">
                        <div class="text-color-4 text-xl xs:f-24 mb-6 xs:mb-12 font-semibold">Enter Re:Set</div>
						<div class="text-color-1 text-base xs:text-xl max-w-370 mb-10 xs:mb-12 md:mb-24">We can help you build and manage a robust workplace well-being program.</div>
                        <div @click="scrollToElement('eo-section-3')" class="learn-how-button-xs xs:learn-how-button flex justify-center items-center text-base xs:text-xl font-semibold cursor-pointer mb-16 md:mb-0">Learn how</div>
                    </div>
                    <div class="w-full sm:w-1/2">
                        <img :src="require('images/home/img70.svg')" alt="Enter-ReSet-graphic" width="539" height="497" class="w-full h-full object-contain object-right-bottom max-h-497" />
                    </div>
                </div>
            </div>
        </div>
        <div id="eo-section-3" class="bg-white">
            <div class="container mx-auto">    
                <div class="w-full flex flex-col px-10 xs:px-20 lg:px-0">
                    <div class="w-full text-color-4 text-xl xs:f-24 uppercase mt-10 xs:mt-16 md:mt-24 mb-5 xs:mb-10 md:mb-16 font-semibold">How does it work?</div>
                    <div class="flex justify-between flex-wrap mt-5 xs:mb-10">
                        <div class="flex flex-col mb-10">
                            <div class="relative w-69 xs:w-92 flex justify-center">
                                <img class="absolute t--26" :src="require('images/home/img6.svg')" alt="Discovery session icon" />
                                <div class="circle-xs xs:circle"></div>
                            </div>
                            <div class="text-color-1 text-xl xs:f-24 font-semibold leading-normal mt-3 xs:mt-6">Book a free<br>discovery session.</div>
                            <div class="text-color-1 text-base xs:text-xl w-auto xs:w-234 leading-normal mt-2 xs:mt-5">A Re:Set expert will deep dive to learn more about your current resources and needs.</div>
                        </div>
                        <div class="flex flex-col mb-10 pb-40-1">
                            <div class="relative w-69 xs:w-92 flex justify-center">
                                <img class="absolute t--26 w-83-per xs:w-auto" :src="require('images/home/img7.svg')" alt="Bespoke program icon" />
                                <div class="circle-xs xs:circle"></div>
                            </div>
                            <div class="text-color-1 text-xl xs:f-24 font-semibold leading-normal mt-3 xs:mt-6">Sign off on your<br>bespoke program.</div>
                            <div class="text-color-1 text-base xs:text-xl w-auto xs:w-273 leading-normal mt-2 xs:mt-5">The Re:Set expert will revert with a customized workplace wellness program based on your needs and budget.</div>
                        </div>
                        <div class="flex flex-col mb-10">
                            <div class="relative w-69 xs:w-92 flex justify-center">
                                <img class="absolute t--12" :src="require('images/home/img8.svg')" alt="Team thrive icon" />
                                <div class="circle-xs xs:circle"></div>
                            </div>
                            <div class="text-color-1 text-xl xs:f-24 font-semibold leading-normal mt-3 xs:mt-6">Sit back and watch<br>your team thrive.</div>
                            <div class="text-color-1 text-base xs:text-xl w-auto xs:w-280 leading-normal mt-2 xs:mt-5">Your workplace wellness program can go live in as little as 2 weeks from sign-off.</div>
                        </div>
                    </div>
                    <div class="flex justify-center xs:justify-start flex-wrap mb-16 xs:mb-32">
                        <div class="mr-0 xs:mr-8 mb-8 xs:mb-0">
                            <div @click="scrollToElement('eo-section-5')" class="our-products-button-xs xs:our-products-button flex justify-center items-center text-base xs:text-xl font-semibold cursor-pointer">Our products</div>
                        </div>
                        <div>
                            <div @click="openModal" class="schedule-demo-button-xs xs:schedule-demo-button flex justify-center items-center text-base xs:text-xl font-semibold cursor-pointer lets-talk">Schedule a free session</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="eo-section-4" class="bg2">
            <div class="container mx-auto">
                <div class="w-full flex justify-center px-10 xs:px-20 lg:px-0">
                    <img :src="require('images/home/img2.svg')" alt="Our Services masthead image" width="1074" height="320" class="rounded-none hidden xs:block" />
                    <img :src="require('images/home/Hands_Mobile_3-hands.png')" alt="" width="295" height="200" class="rounded-none block xs:hidden" />
                </div>
            </div>
        </div>
        <div id="eo-section-5" class="bg-white">
            <div class="container mx-auto">          
                <div class="w-full flex flex-col pb-16 px-10 xs:px-20 lg:px-0">
                    <div class="text-color-3 mt-16 text-2xl xs:text-3xl font-semibold leading-none">What do our services include?</div>
                    <div class="b-b-3 mt-6 pb-6">
                        <div class="text-color-1 text-base xs:text-xl w-full xs:w-1/2">Select any or all combinations of our services to kickstart your team's well-being journey!</div>
                    </div>
                    <div class="flex flex-row flex-wrap pt-10">
                        <div class="w-full xs:w-1/2 md:w-1/3 flex flex-col">
                            <div @click="scrollToElement('eo-section-6')" class="hidden md:flex justify-start items-center mb-6 cursor-pointer">
                                <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                <div class="text-color-1 text-base xs:text-xl">The Re:Set Workplace Well-being Toolkit</div>
                            </div>
                            <div @click="scrollToElement('eo-section-6')" class="flex md:hidden flex-col mb-6 cursor-pointer">
                                <div class="flex justify-start items-center">
                                    <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                    <div class="text-color-1 text-base xs:text-xl">The Re:Set Workplace</div>
                                </div>
                                <div class="flex justify-start items-center">
                                    <div class="ml-6 text-color-1 text-base xs:text-xl">Well-being Toolkit</div>
                                </div>
                            </div>
                            <div @click="scrollToElement('eo-section-7')" class="flex justify-start items-center mb-6 cursor-pointer">
                                <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                <div class="text-color-1 text-base xs:text-xl">Re:Set Resources</div>
                            </div>
                            <div @click="scrollToElement('eo-section-8')" class="flex justify-start items-center mb-6 cursor-pointer">
                                <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                <div class="text-color-1 text-base xs:text-xl">Re:Set Posts</div>
                            </div>
                        </div>
                        <div class="w-full xs:w-1/2 md:w-1/3 flex flex-col">
                            <div @click="scrollToElement('eo-section-9')" class="flex justify-start items-center mb-6 cursor-pointer">
                                <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                <div class="text-color-1 text-base xs:text-xl">Re:Set Dialogues</div>
                            </div>
                            <div @click="scrollToElement('eo-section-10')" class="flex justify-start items-center mb-6 cursor-pointer">
                                <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                <div class="text-color-1 text-base xs:text-xl">Re:Set Experiences</div>
                            </div>
                        </div>
                        <div class="mt-4 w-full md:w-1/3 flex flex-col items-center lets-talk">
                            <div @click="openModal" class="get-started-button-xs xs:get-started-button flex justify-center items-center text-base xs:text-xl font-semibold cursor-pointer lets-talk">Get started</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="eo-section-6" class="bg3">
            <div class="container mx-auto">           
                <div class="h-auto md:h-703 my-16 md:my-0 px-10 xs:px-20 lg:px-0">
                    <div class="h-full flex items-center">
                        <div class="w-full flex flex-row flex-wrap">
                            <div class="w-full md:w-1/2">
                                <div class="h-full w-full flex flex-col justify-center">
                                    <div class="box-1-xs xs:box-1 flex justify-center items-center">
                                       <div class="hidden xs:block">
                                           <img2 class="w-311"></img2>
                                       </div>
                                       <div class="block xs:hidden">
                                           <img2 class="w-200"></img2>
                                       </div>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full md:w-1/2 pr-0 lg:pr-32 pl-0 md:pl-16 lg:pl-0 mt-8 md:mt-0">
                                <div class="h-full w-full flex flex-col justify-center">
                                    <div class="text-color-3 text-2xl xs:text-3xl font-semibold leading-tight">The Re:Set Well-being Toolkit</div>
                                    <div class="text-color-1 text-base xs:text-xl mt-6">Your go-to guide for implementing workplace wellness at your organization. This includes:</div>
                                    <div class="text-color-1 text-base xs:text-xl mt-6 flex justify-start">
                                        <div class="mr-2">1.</div>
                                        <div class="eo-text-block">A tailored mental health and well-being program</div>
                                    </div>
                                    <div class="text-color-1 text-base xs:text-xl mt-6 flex justify-start">
                                        <div class="mr-2">2.</div>
                                        <div>Suggestions of well-being and mental health practices</div>
                                    </div>
                                    <div class="text-color-1 text-base xs:text-xl mt-6 flex justify-start">
                                        <div class="mr-2">3.</div>
                                        <div>Easy to implement well-being activities and initiatives</div>
                                    </div>
                                    <div class="text-color-1 text-base xs:text-xl mt-6 flex justify-start">
                                        <div class="mr-2">4.</div>
                                        <div>Considerations for COVID-19</div>
                                    </div>
                                    <div class="text-color-1 text-base xs:text-xl mt-6 flex justify-start">
                                        <div class="mr-2">5.</div>
                                        <div>Any other topics relevant to your organization's well-being needs</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="eo-section-7" class="bg4">
            <div class="container mx-auto">           
                <div class="h-auto md:h-668 my-16 md:my-0 px-10 xs:px-20 lg:px-0">
                    <div class="h-full flex items-center">
                        <div class="w-full flex flex-row-reverse flex-wrap">
                            <div class="w-full md:w-1/2 pl-0">
                                <img3 class="w-auto md:max-w-472-5"></img3>
                            </div>
                            <div class="w-full md:w-1/2 pl-0 md:pl-20">
                                <div class="text-color-3 text-2xl xs:text-3xl font-semibold mt-6">Re:Set Resources</div>
                                <div class="text-color-1 text-base xs:text-xl mt-6 w-250 xs:w-360">Comprehensive, culturally sensitive and multilingual credible content for your team members which include:</div>
                                <div class="flex flex-col">
                                    <div class="flex justify-start mt-6">
                                        <div class="flex flex-col items-center w-106 mr-12 xs:mr-24">
                                            <div class="h-58 flex items-center justify-center"><img class="rounded-none w-85-per xs:w-auto" :src="require('images/home/img15.svg')" alt="Newsletter icon" /></div>
                                            <div class="text-color-1 text-base xs:text-xl">Newsletters</div>
                                        </div>
                                        <div class="flex flex-col items-center w-106">
                                            <div class="h-58 flex items-center justify-center"><img class="rounded-none w-85-per xs:w-auto" :src="require('images/home/img16.svg')" alt="VIdeos icon" /></div>
                                            <div class="text-color-1 text-base xs:text-xl">Videos</div>
                                        </div>
                                    </div>
                                    <div class="flex justify-start mt-6">
                                        <div class="flex flex-col items-center w-106 mr-12 xs:mr-24">
                                            <div class="h-58 flex items-center justify-center"><img class="rounded-none w-85-per xs:w-auto" :src="require('images/home/img17.svg')" alt="DIY guides icon" /></div>
                                            <div class="text-color-1 text-base xs:text-xl">DIY Guides</div>
                                        </div>
                                        <div class="flex flex-col items-center w-106">
                                            <div class="h-58 flex items-center justify-center"><img class="rounded-none w-85-per xs:w-auto" :src="require('images/home/img18.svg')" alt="Courses icon" /></div>
                                            <div class="text-color-1 text-base xs:text-xl">Courses</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="eo-section-8" class="bg5">
            <div class="container mx-auto">           
                <div class="h-auto md:h-668 my-16 md:my-0 px-10 xs:px-20 lg:px-0">
                    <div class="h-full flex items-center">
                        <div class="w-full flex flex-row flex-wrap">
                            <div class="w-full md:w-1/2">
                                <img4 class="max-w-487-5"></img4>
                            </div>
                            <div class="w-full md:w-1/2 flex flex-col justify-center mt-8 md:mt-0 pl-0 md:pl-20 lg:pl-0"> 
                                <div>
                                    <div class="text-color-3 text-2xl xs:text-3xl font-semibold">Re:Set Posts</div>
                                    <div class="text-color-1 text-base xs:text-xl mt-6 w-250 xs:w-340">Social media friendly well-being content for your internal and external stakeholders including:</div>
                                    <div class="flex flex-col">
                                        <div class="flex justify-start mt-6">
                                            <div class="flex flex-col items-start w-106 mr-6 xs:mr-12">
                                                <div class="h-58 flex items-center justify-center"><img class="rounded-none w-85-per" :src="require('images/home/img19.svg')" alt="Posts icon" /></div>
                                                <div class="text-color-1 text-base xs:text-xl font-semibold">Posts</div>
                                            </div>
                                            <div class="flex flex-col items-center">
                                                <div class="h-58 flex items-center justify-center"><img class="rounded-none w-85-per" :src="require('images/home/img20.svg')" alt="Short videos icon" /></div>
                                                <div class="text-color-1 text-base xs:text-xl font-semibold">Short videos</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="eo-section-9" class="bg6">
            <div class="container mx-auto">           
                <div class="h-auto md:h-668 my-16 md:my-0 px-10 xs:px-20 lg:px-0">
                    <div class="h-full flex items-center">
                        <div class="w-full flex flex-row-reverse flex-wrap">
                            <div class="w-full md:w-1/2 pl-0">
                                <div class="box-2-responsive-xs xs:box-2 md:box-2-responsive lg:box-2 flex justify-center items-center px-5">
                                    <img :src="require('images/home/img71.svg')" alt="Dialogues graphic" width="481" height="347" class="w-full" />
                                </div>
                            </div>
                            <div class="w-full md:w-1/2 pl-0 lg:pl-20  mt-8 md:mt-0">

                                <div class="text-color-3 text-2xl xs:text-3xl font-semibold">Re:Set Dialogues</div>
                                <div class="text-color-1 text-base xs:text-xl mt-6 w-250 xs:w-353">Conversations matter. Sometimes all your team needs is someone that listens to them or someone they can relate to.</div>
                                <div class="text-color-1 text-base xs:text-xl mt-6 w-250 xs:w-353">Re:Set Dialogues are designed to be a safe space for employees to discuss and engage with experts.</div>
                                <div class="text-color-1 text-base xs:text-xl mt-6 w-250 xs:w-353">Re:Set Dialogues can be hosted:</div>
                                <div class="flex flex-col">
                                    <div class="flex justify-start mt-6">
                                        <div class="flex flex-col items-center w-106 mr-6 xs:mr-12">
                                            <div class="h-58 flex items-center justify-center"><img class="rounded-none w-85-per" :src="require('images/home/img21.svg')" alt="In-person icon" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold">In-person</div>
                                        </div>
                                        <div class="flex flex-col items-center w-106">
                                            <div class="h-58 flex items-center justify-center"><img class="rounded-none w-85-per" :src="require('images/home/img22.svg')" alt="Online icon" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold">Online</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="eo-section-10" class="bg7">
            <div class="container mx-auto">           
                <div class="h-auto lg:h-668 my-16 lg:my-0 px-10 xs:px-20 lg:px-0">
                    <div class="h-full flex items-center">
                        <div class="w-full flex flex-row flex-wrap">
                            <div class="w-full md:w-1/2 flex items-center">
                                <div class="box-2-responsive-xs xs:box-2 md:box-2-responsive lg:box-2 flex justify-center items-center px-16">
                                    <img class="w-185 xs:w-auto" :src="require('images/home/img5.svg')" alt="Experiences graphic" width="410" height="410" />
                                </div>
                            </div>
                            <div class="w-full md:w-1/2 mt-8 md:mt-0 pl-0 md:pl-20 lg:pl-0">                         
                                <div class="text-color-3 text-2xl xs:text-3xl font-semibold">Re:Set Experiences</div>
                                <div class="text-color-1 text-base xs:text-xl mt-6 w-250 xs:w-377">Give your team a time out and an opportunity to discover greatness in each other.</div>
                                <div class="text-color-1 text-base xs:text-xl mt-6 w-250 xs:w-375">Re:Set Experiences are bespoke online or in-person experiences that include:</div>
                                <div class="flex justify-start flex-wrap mt-5">
                                    <div class="flex flex-col mr-6">
                                        <div class="flex justify-start items-center">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Karaoke nights</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Dance-offs</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Story-telling</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Writing</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Fitness</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Wellness</div>
                                        </div>
                                    </div>
                                    <div class="flex flex-col">
                                        <div class="flex justify-start items-center">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Cooking</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Baking</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Art</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Coding</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Trivia</div>
                                        </div>
                                        <div class="flex justify-start items-center mt-1">
                                            <div class="mr-2"><img class="" :src="require('images/home/img14.svg')" alt="Icon feather-arrow-right" /></div>
                                            <div class="text-color-1 text-base xs:text-xl font-semibold tracking-wide">Scavenger Hunts</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="flex flex-col">
                                    <div class="w-full text-color-1 text-base xs:text-xl mt-5">Shall we go on?</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="eo-section-11" class="bg-white">
            <div class="container mx-auto">
                
                <div class="flex flex-col pt-16 xs:pt-36 pb-16 xs:pb-28 px-10 xs:px-20 lg:px-0">
                    <div class="text-color-3 text-2xl xs:text-3xl font-semibold">Why Re:Set works?</div>
                    
                    <div class="flex flex-row flex-wrap mt-10 xs:mt-28">
                        <div class="w-full sm:w-1/2 md:w-1/3 flex flex-col mb-10 xs:mb-20">
                            <div><img class="w-55-xs xs:w-auto" :src="require('images/home/img9.svg')" alt="Proven icon" /></div>
                            <div class="text-color-1 text-xl xs:f-24 font-semibold mt-3">Proven</div>
                            <div class="text-color-1 text-base xs:text-xl mt-4 w-228">Our customers notice a visible difference</div>
                        </div>
                        <div class="w-full sm:w-1/2 md:w-1/3 flex flex-col mb-10 xs:mb-20 items-start md:items-center">
                            <div>
                                <div><img class="w-49-xs xs:w-auto" :src="require('images/home/img10.svg')" alt="Inclusive icon" /></div>
                                <div class="text-color-1 text-xl xs:f-24 font-semibold mt-3">Inclusive</div>
                                <div class="text-color-1 text-base xs:text-xl mt-4 w-264">Our resources are localized to suit hybrid and culturally diverse work environments</div>
                            </div>
                        </div>
                        <div class="w-full sm:w-1/2 md:w-1/3 flex flex-col mb-10 xs:mb-20 items-start md:items-end">
                            <div>
                                <div><img class="w-57-xs xs:w-auto" :src="require('images/home/img11.svg')" alt="Flexible icon" /></div>
                                <div class="text-color-1 text-xl xs:f-24 font-semibold mt-3">Flexible</div>
                                <div class="text-color-1 text-base xs:text-xl mt-4 w-245">Our plans cater to everyone from startups to large organizations</div>
                            </div>
                        </div>
                        <div class="w-full sm:w-1/2 md:w-1/3 flex flex-col mb-10 xs:mb-20 items-start">
                            <div>
                                <div><img class="w-45-xs xs:w-auto" :src="require('images/home/img12.svg')" alt="Bespoke icon" /></div>
                                <div class="text-color-1 text-xl xs:f-24 font-semibold mt-3">Bespoke</div>
                                <div class="text-color-1 text-base xs:text-xl mt-4 w-178">Our content can be curated to your needs</div>
                            </div>
                        </div>
                        <div class="w-full sm:w-1/2 md:w-1/3 flex flex-col mb-10 xs:mb-20 items-start md:items-center">
                            <div>
                                <div><img class="w-54-xs xs:w-auto" :src="require('images/home/img13.svg')" alt="Fast icon" /></div>
                                <div class="text-color-1 text-xl xs:f-24 font-semibold mt-3">Fast</div>
                                <div class="text-color-1 text-base xs:text-xl mt-4 w-214">Your program is up and running in as little as 2 weeks</div>
                            </div>
                        </div>
                    </div>
                    <div class="flex justify-center xs:justify-start">
                        <div @click="openModal" class="get-in-touch-button-xs xs:get-in-touch-button flex justify-center items-center text-base xs:text-xl font-semibold cursor-pointer lets-talk">Let's get in touch!</div>
                    </div>


                </div>


            </div>
        </div>



        <div id="eo-section-12" class="bg3">
            <div class="container mx-auto">  
                <div class="flex flex-col pt-16 xs:pt-24 pb-8 xs:pb-20 px-10 xs:px-20 lg:px-0">
                    <div class="text-color-3 text-xl xs:f-24 font-semibold">WHAT ARE THEY SAYING?</div>
                    <div class="w-full flex justify-center md:justify-between flex-wrap mt-12 xs:mt-24">
                        <div class="box-3-xs xs:box-3 mb-10 xs:mb-20 flex flex-col items-center pb-10 xs:pb-0 px-12">
                            <div class="mt-10"><img class="test-img-b" :src="require('images/home/testimonial2.jpeg')" alt="Mepra logo" width="122" height="122" /></div>
                            <div class="mt-8 text-center leading-normal f-15 text-color-5 font-semibold">Middle East Public Relations Association</div>
                            <div class="mt-4 text-center text-sm leading-tight text-color-1">"MEPRA was honoured to partner with Re:Set to deliver invaluable mental health support to our industry professionals. Thanks to Re:Set, our member organizations are better equipped to support their team’s mental well-being
                                with a range of mental health management and support tools now easily accessible."</div>
                        </div>
                        <div class="box-3-xs xs:box-3 mb-10 xs:mb-20 flex flex-col items-center pb-10 xs:pb-0 px-16">
                            <div class="mt-10"><img class="test-img" :src="require('images/home/testimonial3.jpeg')" alt="Pooja Dhingra" width="122" height="122" /></div>
                            <div class="mt-8 text-center leading-normal f-15 text-color-5 font-semibold">Pooja Dhingra</div>
                            <div class="text-xs text-color-5 text-center">Celebrity chef</div>
                            <div class="mt-4 text-center text-sm leading-tight text-color-1">"Re:Set is an incredible platform that advocates for inclusion and well-being; it's what we need in the world currently. It was a great experience being part of Re:Set Dialogues."</div>
                        </div>
                        <div class="box-3-xs xs:box-3 mb-10 xs:mb-20 flex flex-col items-center pb-10 xs:pb-0 px-12">
                            <div class="mt-10"><img class="test-img" :src="require('images/home/testimonial1.jpeg')" alt="Dr. Anthony Murphy" width="122" height="122" /></div>
                            <div class="mt-8 text-center leading-normal f-15 text-color-5 font-semibold">Dr. Anthony Murphy</div>
                            <div class="leading-tight text-xs text-color-5 text-center">Director of Psychology Programmes (Dubai) University of Birmingham Dubai</div>
                            <div class="mt-4 text-center text-sm leading-tight text-color-1">Re:Set is a fantastic organization to work with. Their commitment to evidence and real issues really bridges the gap between scientific work and straightforward communication and engagement to the community at large. Working
                                on Re:Set Dialogues is a truly interesting and unique experience.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="eo-section-13" class="bg-white">
            <div class="container mx-auto">
                
                <div class="flex flex-col py-16 xs:py-20 px-10 xs:px-20 lg:px-0">
                    <div class="text-color-3 text-xl xs:f-24 font-semibold">As featured in</div>
                    <div class="w-full hidden xs:flex justify-between flex-wrap pt-16 items-center">
                        <div><img class="my-4" :src="require('images/home/Forbes-Middle-east-logo.png')" alt="Forbes Middle east logo" width="120" height="34" /></div>
                        <div><img class="my-4" :src="require('images/home/Harper-Bazar-Arabia-logo.png')" alt="Harper Bazar Arabia logo" width="130" height="32" /></div>
                        <div><img :src="require('images/home/Marie-Claire-Arabia-logo-1.png')" alt="Marie Claire Arabia logo" width="199" height="53" class="my-4" /></div>
                        <div><img :src="require('images/home/Entrepreneur-Middle-East-logo-1.png')" alt="entrepreneur" width="198" height="45" class="my-4" /></div>
                        <div><img class="my-4" :src="require('images/home/GQ-middle-east-logo.png')" alt="GQ middle east logo" width="81" height="42" /></div>
                        <div><img class="my-4" :src="require('images/home/Vogue-arabia-logo.png')" alt="Vogue-arabia logo" width="133" height="34" /></div>
                    </div>
                    <div class="w-full flex xs:hidden flex-col pt-6">
                        <div class="flex justify-between items-center mb-10">
                            <div><img class="w-75-per" :src="require('images/home/Forbes-Middle-east-logo.png')" alt="Forbes Middle east logo" width="120" height="34" /></div>
                            <div class="flex justify-end"><img :src="require('images/home/Marie-Claire-Arabia-logo-1.png')" alt="Marie Claire Arabia logo" width="199" height="53" class="w-75-per" /></div>
                        </div>
                        <div class="flex justify-between items-center mb-10">
                            <div><img class="w-75-per" :src="require('images/home/Harper-Bazar-Arabia-logo.png')" alt="Harper Bazar Arabia logo" width="130" height="32" /></div>
                            <div class="flex justify-end"><img class="w-75-per" :src="require('images/home/Vogue-arabia-logo.png')" alt="Vogue-arabia logo" width="133" height="34" /></div>
                        </div>
                        <div class="flex justify-between items-center">
                            <div><img :src="require('images/home/Entrepreneur-Middle-East-logo-1.png')" alt="entrepreneur" width="198" height="45" class="w-75-per" /></div>
                            <div class="flex justify-end"><img class="w-75-per" :src="require('images/home/GQ-middle-east-logo.png')" alt="GQ middle east logo" width="81" height="42" /></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>  
    <lets-talk></lets-talk>
    </div>
</template>

<script>
import img1 from "./svg/img1.vue";
import img2 from "./svg/img2.vue";
import img3 from "./svg/img3.vue";
import img4 from "./svg/img4.vue";
import LetsTalk from "./components/lets_talk.vue";
export default {
  name: "home",
  components: { img1, img2, img3, img4, LetsTalk, },
  methods: {
      scrollToElement(id) {
        const el = document.getElementById(id);
        if (el) {
            el.scrollIntoView({behavior: 'smooth', top: 0});
        }
    },
    openModal() {
        this.$modal.show('lets-talk-modal');
    },
  },
}
</script>

<style scoped>
    .bg1 {
        background-color: #F0DBD8;
    }
    .bg2 {
        background-color: #f4f0fb;
    }
    .bg3 {
        background-color: #F4F1FA;
    }
    .bg4 {
        background-color: #F6ECF8
    }
    .bg5 {
        background-color: #F5E7F8;
    }
    .bg6 {
        background-color: #E8E7FC;
    }
    .bg7 {
        background-color: #DDDBFF;
    }
    .text-color-1 {
        color: #707070;
    }
    .text-color-3 {
        color: #8C3EE8;
    }
    .text-color-4 {
        color: #8149D8;
    }
    .text-color-5 {
        color: #221F20;
    }
    .b-b-3 {
        border-bottom: 1px solid #8C3EE8;
    }
    @responsive {
        .max-w-335 {
            max-width: 348px;
        }
        .max-w-370 {
            max-width: 370px;
        }
        .max-h-497 {
            max-height: 497px;
        }
        .f-24 {
            font-size: 24px;
        }
        .f-15 {
            font-size: 15px;
        }
        .learn-how-button-xs {
            background-color: #8C3EE8;
            width: 129px;
            height: 45px;
            color: white;
            border-radius: 30px;
        }
        .learn-how-button {
            background-color: #8C3EE8;
            width: 172px;
            height: 60px;
            color: white;
            border-radius: 30px;
        }
        .our-products-button-xs {
            background-color: #8C3EE8;
            width: 152px;
            height: 45px;
            color: white;
            border-radius: 30px;
        }
        .our-products-button {
            background-color: #8C3EE8;
            width: 203px;
            height: 60px;
            color: white;
            border-radius: 30px;
        }
        .schedule-demo-button-xs {
            background-color: #f4f0fb;
            width: 219px;
            height: 45px;
            color: #707070;
            border-radius: 30px;
        }
        .schedule-demo-button {
            background-color: #f4f0fb;
            width: 292px;
            height: 60px;
            color: #707070;
            border-radius: 30px;
        }
        .get-started-button-xs {
            background-color: #8C3EE8;
            width: 137px;
            height: 45px;
            color: white;
            border-radius: 30px;
        }
        .get-started-button {
            background-color: #8C3EE8;
            width: 183px;
            height: 60px;
            color: white;
            border-radius: 30px;
        }
        .get-in-touch-button {
            background-color: #8C3EE8;
            width: 231px;
            height: 60px;
            color: white;
            border-radius: 30px;
        }
        .get-in-touch-button-xs {
            background-color: #8C3EE8;
            width: 173px;
            height: 45px;
            color: white;
            border-radius: 30px;
        }
        .circle-xs {
            width: 69px;
            height: 69px;
            border-radius: 50%;
            background-color: #F4F1FA;
        }
        .circle {
            width: 92px;
            height: 92px;
            border-radius: 50%;
            background-color: #F4F1FA;
        }
        .w-auto {
            width: auto;
        }
        .w-75-per {
            width: 75%;
        }
        .w-55-xs {
            width: 55px;
        }
        .w-49-xs {
            width: 49px;
        }
        .w-57-xs {
            width: 57px;
        }
        .w-45-xs {
            width: 45px;
        }
        .w-54-xs {
            width: 54px;
        }
        .w-85-per {
            width: 85%;
        }
        .w-83-per {
            width: 83%;
        }
        .w-185 {
            width: 185px; 
        }
        .w-92 {
            width: 92px;
        }
        .w-69 {
            width: 69px;
        }
        .w-234 {
            width: 234px;
        }
        .w-273 {
            width: 273px;
        }
        .w-280 {
            width: 280px;
        }
        .w-200 {
            width: 200px !important;
        }
        .w-311 {
            width: 311px;
        }
        .max-w-472-5 {
            max-width: 472.5px;
        }
        .w-360 {
            width: 360px;
        }
        .w-250 {
            width: 250px;
        }
        .max-w-487-5 {
            max-width: 487.5px;
        }
        .w-106 {
            width: 106px;
        }
        .w-340 {
            width: 340px;
        }
        .w-353 {
            width: 353px;
        }
        .w-377 {
            width: 377px;
        }
        .w-375 {
            width: 375px;
        }
        .w-228 {
            width: 228px;
        }
        .w-264 {
            width: 264px;
        }
        .w-245 {
            width: 245px;
        }
        .w-178 {
            width: 178px;
        }
        .w-214 {
            width: 214px;
        }
        .t--26 {
            top: -26px;
        }
        .t--12 {
            top: -12px;
        }
        .h-703 {
            height: 703px;
        }
        .h-668 {
            height: 668px;
        }
        .h-58 {
            height: 58px;
        }
        .box-1-xs {
            max-width: 477px;
            height: 275px;
            background-color: #faf8fd;
            border-radius: 55px;
        }
        .box-1 {
            max-width: 477px;
            height: 410px;
            background-color: #faf8fd;
            border-radius: 55px;
        }
        .box-2 {
            max-width: 520px;
            height: 420px;
            background-color: #f4f3fe;
            border-radius: 55px;
        }
        .box-2-responsive {
            height: 420px;
            background-color: #f4f3fe;
            border-radius: 55px;
        }
        .box-2-responsive-xs {
            width: 100%;
            height: 250px;
            background-color: #f4f3fe;
            border-radius: 55px;
        }
        .box-3 {
            width: 317px;
            height: 522px;
            background-color: white;
        }
        .box-3-xs {
            width: 100%;
            height: auto;
            background-color: white;
        }
        .test-img {
            width: 122px;
            height: 122px;
            object-fit: cover;
            border-radius: 50%;
            object-position: top;
        }
        .test-img-b {
            width: 122px;
            height: 122px;
            object-fit: cover;
            border-radius: 50%;
            object-position: top;
            border: 1px solid #ccc;
            padding: 10px;
        }
    }
</style>