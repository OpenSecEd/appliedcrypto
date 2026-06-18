---
name: INL1Written Peer Review
regex: INL1Written Peer Review
due_at: null
unlock_at: null
lock_at: null
points_possible: 100.0
published: true
rubric: null
modules:
- Week 7
---
# Background

INL1 has 3 parts:

1.  INL1Quiz, a set of P/F quizzes on Canvas for each of the lectures covering
    cryptographic primitives and randomness. The quiz is not proctored and is 
    to be done individually without coordination with others. You must get P on 
    all of them to pass.
2.  **INL1Written, graded P/F, toward the end of the course, where you
    get to apply your knowledge. You will have a week to work on your
    solution (the task itself will take about half a day or a day at
    most.) You may work in pairs on this assignment.**
3.  INL1Oral, graded P/F, at the end of the course (you'll pick one of
    the offered times and sign up), where you get about 10 minutes to
    answer some questions about your solution. There you can also
    clarify anything we found unclear in INL1Written, thus potentially
    getting the preliminary grade from that part improved. If you worked in 
    pairs on INL1Written, you book in pairs for INL1Oral as well.

# Conditions

This assignment touches on a wide range topics covered in the course,
but with more emphasis on how to apply crypto than on the crypto itself.

There is no single right answer, we are aware that this is an open-ended
problem. Understanding and interpreting the question is part of the
problem. You get a chance to state your assumptions and we grade this
assignment generously. Before you start, read the grading criteria
again.

You have a week to complete the assignment, but the actual appropriate
effort is about half a day, up to a day at most. The level of depth and
detail should be proportionate to that. Given that you have limited
time, make sure to cover all areas to a sufficient degree. That is,
don't spend all your time solving one problem and leave something else
wide open, e.g., a secure but clearly illegal system is not very useful.

You work individually or in pairs. No cooperation outside the pair is allowed.

# Task

Using a system description (to be posted below when it's time for the
assignment), sketch how you would go about developing it and how you
take into account the points listed. Upload your response as a pdf of
about 3 pages (and without your name or person number in the pdf or file
name). You will get someone else's submission to give brief feedback
to. 

Here's a [google doc
template](https://docs.google.com/document/d/1o5u6Qf1Qpv8B8olkWHfCkwGPZCBctJXJOIwm3_zwaAc/edit?usp=sharing){target="_blank"}
you can use (make
a [copy](https://docs.google.com/document/d/1o5u6Qf1Qpv8B8olkWHfCkwGPZCBctJXJOIwm3_zwaAc/copy){target="_blank"}),
3 pages translate into, on average, 120 words per list item below. The
lengths of your responses may vary, of course. The page limit is a
guideline, and though strongly recommended, will not be strictly
enforced. (You can leave the lorem ipsum text in the ones you haven't
answered yet to get an estimation of how long your text will be if they
are of average length.)

## Scencario/system description, during course

From 1st January 2027, all electricity providers in Sweden are required to 
charge an effect tariff (due to EU regulations). This means that the 
electricity bill will be based on the price of electricity at the time of use, 
but also on the maximum power (effect) used during the billing period. This is 
done to encourage users to use electricity more efficiently and to reduce the
peak load on the electricity grid. The desired result is that people distribute 
their electricity use, so that they don't use the oven, charge their electric 
car, run the dishwasher and laundry machine all at the same time.

To help the households to distribute their electricity use, we want smart 
products to be able to coordinate when they use electricity. For instance, the 
car and the heating system can automatically lower their use when they detect 
that the oven, vaccum cleaner, dishwasher or laundry machine are running. The 
dishwasher can delay its starting until the power consumption is lower or the 
price is cheaper.

To make this work, we have the following devices:

  - The power meter: It records and reports the current current power 
    consumption of the household. It also reports the maximum power used during 
    the billing period to the electricity provider.
  - The controller: The controller coordinates the use of electricity between 
    the devices. It must get data about power usage from the power meter and 
    the devices. It must also send commands to the devices to adjust their 
    power consumption.
  - Smart devices: Light bulbs, TVs, ovens, dishwashers, stoves, laundry 
    machines, vacuum cleaners, electric cars, heating systems, etc. They can 
    report their current power consumption to the controller and can receive 
    commands from the controller to adjust their power consumption (e.g. 
    suspend until later).

They all communicate wirelessly (radio). Design the protocol and focus on the 
cryptographic requirements.

[Outline how crypto can support this system. Discuss the properties
needed and any obstacles. Remember to cover all relevant areas that
we've covered in the
course.]{style="color: var(--ic-brand-font-color-dark); font-family: inherit; font-size: 1rem;"}

**Tips: be brief and concrete in your responses, avoid
generalities. Focus more on your applied-crypto task than details of how
the underlying system works, just state any assumptions explicitly.**

## Scencario/system description, during Lab Week

#### TBD.

[Outline how crypto can support this system. Discuss the properties
needed and any obstacles. Remember to cover all relevant areas that
we've covered in the
course.]{style="color: var(--ic-brand-font-color-dark); font-family: inherit; font-size: 1rem;"}

**Tips: be brief and concrete in your responses, avoid
generalities. Focus more on your applied-crypto task than details of how
the underlying system works, just state any assumptions explicitly.**

## Assumptions

The system description is at a high level, you'll have to make some
assumptions. What are your assumptions about

- the system, components and their resources

- the users, their goals and capabilities

- the potential adversaries, their goals and capabilities. Remember to
consider insider threats as well.

## Considerations

How would you go about making the following choices in the design and
development, and what are the factors you consider, in general and
specifically for the given scenario? For those choices that you can
already make, what did you choose and why?

- requirements (e.g., security properties, authentication, performance)

- architecture (e.g., servers, devices, sensors, smartphones,
smartcards, what is computed where)

- data at rest (how and where is it stored)

- data in transit (what is sent and how)

- cryptographic algorithms and protocols (e.g., AES, RSA)

- implementation (e.g., libraries)

- parameters (e.g., key length)

- ensuring randomness

- trade-offs and risks (e.g., privacy vs. utility, cost vs. security,
proportionality)

- legal considerations

- usability considerations

- possible threats and countermeasures

- non-cryptographic attacks

- cryptographic attacks

## Peer review

**Deadline for peer review: two (2) days after the original deadline**

**The focus of the review** is to help the person to pass: Have they
missed anything in the instruction? Do they have some weaknesses in
their solution? Is something unclear or seems wrong? Maybe they have
misunderstood some concept that they need to review.

