;;; ***************************
;;; * DEFTEMPLATES & DEFFACTS *
;;; ***************************

(deftemplate UI-state
   (slot id (default-dynamic (gensym*)))
   (slot display)
   (slot relation-asserted (default none))
   (slot response (default none))
   (multislot valid-answers)
   (slot state (default middle)))
   
(deftemplate state-list
   (slot current)
   (multislot sequence))
  
(deffacts startup
   (state-list))
   
;;;****************
;;;* STARTUP RULE *
;;;****************

(defrule system-banner ""

  =>
  
  (assert (UI-state (display WelcomeMessage)
                    (relation-asserted start)
                    (state initial)
                    (valid-answers))))

;;;***************
;;;* QUERY RULES *
;;;***************

(defrule determine-question_1_need_make_money ""

   (logical (start))

   =>

   (assert (UI-state (display question_1_need_make_money_q)
                     (relation-asserted question_1_need_make_money)
                     (response No)
                     (valid-answers No Yes))))
   
(defrule determine-question_2_money_to_spend ""

   (logical (question_1_need_make_money No))

   =>

   (assert (UI-state (display question_2_money_to_spend_q)
                     (relation-asserted question_2_money_to_spend)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_3_artistic_talent ""

   (logical (question_2_money_to_spend No))

   =>

   (assert (UI-state (display question_3_artistic_talent_q)
                     (relation-asserted question_3_artistic_talent)
                     (response No)
                     (valid-answers No Yes))))
   
(defrule determine-question_3_stay_in_hamilton ""

   (logical (question_2_money_to_spend Yes))

   =>

   (assert (UI-state (display question_3_stay_in_hamilton_q)
                     (relation-asserted question_3_stay_in_hamilton)
                     (response No)
                     (valid-answers No Yes))))
   
(defrule determine-question_4_use_your_brain ""

   (logical (question_3_stay_in_hamilton Yes))

   =>

   (assert (UI-state (display question_4_use_your_brain_q)
                     (relation-asserted question_4_use_your_brain)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_2_want_use_your_brain ""

   (logical (question_1_need_make_money Yes))

   =>

   (assert (UI-state (display question_2_want_use_your_brain_q)
                     (relation-asserted question_2_want_use_your_brain)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_3_want_to_work_outside ""

   (logical (question_2_want_use_your_brain No))

   =>

   (assert (UI-state (display question_3_want_to_work_outside_q)
                     (relation-asserted question_3_want_to_work_outside)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_4_hard_physical_labour ""

   (logical (question_3_want_to_work_outside Yes))

   =>

   (assert (UI-state (display question_4_hard_physical_labour_q)
                     (relation-asserted question_4_hard_physical_labour)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_5_camping ""
  
   (logical (question_4_hard_physical_labour No))

   =>
   
   (assert (UI-state (display question_5_camping_q)
                     (relation-asserted question_5_camping)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_5_showering_infrequently ""

   (logical (question_4_hard_physical_labour Yes))

   =>

   (assert (UI-state (display question_5_showering_infrequently_q)
                     (relation-asserted question_5_showering_infrequently)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_6_animals ""
   
   (logical (question_5_showering_infrequently No))

   =>

   (assert (UI-state (display question_6_animals_q)
                     (relation-asserted question_6_animals)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_4_want_to_work_with_food_drink ""
   
   (logical (question_3_want_to_work_outside No))

   =>

   (assert (UI-state (display question_4_want_to_work_with_food_drink_q)
                     (relation-asserted question_4_want_to_work_with_food_drink)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_5_telling_people_what_to_do ""
   
   (logical (question_4_want_to_work_with_food_drink No))

   =>

   (assert (UI-state (display question_5_telling_people_what_to_do_q)
                     (relation-asserted question_5_telling_people_what_to_do)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_6_fine_with_travelling ""
   
   (logical (question_5_telling_people_what_to_do No))

   =>

   (assert (UI-state (display question_6_fine_with_travelling_q)
                     (relation-asserted question_6_fine_with_travelling)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_7_afraid_of_needles ""
   
   (logical (question_6_fine_with_travelling No))

   =>

   (assert (UI-state (display question_7_afraid_of_needles_q)
                     (relation-asserted question_7_afraid_of_needles)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_6_bulky ""
   
   (logical (question_5_telling_people_what_to_do Yes))

   =>

   (assert (UI-state (display question_6_bulky_q)
                     (relation-asserted question_6_bulky)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_7_good_swimmer ""
   
   (logical (question_6_bulky No))

   =>

   (assert (UI-state (display question_7_good_swimmer_q)
                     (relation-asserted question_7_good_swimmer)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_5_good_people_skills ""
   
   (logical (question_4_want_to_work_with_food_drink Yes))

   =>

   (assert (UI-state (display question_5_good_people_skills_q)
                     (relation-asserted question_5_good_people_skills)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_6_getting_a_bit_greasy ""
   
   (logical (question_5_good_people_skills No))

   =>

   (assert (UI-state (display question_6_getting_a_bit_greasy_q)
                     (relation-asserted question_6_getting_a_bit_greasy)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_7_like_burgers ""
   
   (logical (question_6_getting_a_bit_greasy No))

   =>

   (assert (UI-state (display question_7_like_burgers_q)
                     (relation-asserted question_7_like_burgers)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_6_difference_between_manhattan ""
   
   (logical (question_5_good_people_skills Yes))

   =>

   (assert (UI-state (display question_6_difference_between_manhattan_q)
                     (relation-asserted question_6_difference_between_manhattan)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_3_work_in_an_office ""

   (logical (question_2_want_use_your_brain Yes))

   =>

   (assert (UI-state (display question_3_work_in_an_office_q)
                     (relation-asserted question_3_work_in_an_office)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_4_be_your_own_boss ""

   (logical (question_3_work_in_an_office No))

   =>

   (assert (UI-state (display question_4_be_your_own_boss_q)
                     (relation-asserted question_4_be_your_own_boss)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_5_want_to_work_outside ""

   (logical (question_4_be_your_own_boss No))

   =>

   (assert (UI-state (display question_5_want_to_work_outside_q)
                     (relation-asserted question_5_want_to_work_outside)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_5_good_at_academics ""

   (logical (question_4_be_your_own_boss Yes))

   =>

   (assert (UI-state (display question_5_good_at_academics_q)
                     (relation-asserted question_5_good_at_academics)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_6_are_you_artistic ""

   (logical (question_5_good_at_academics No))

   =>

   (assert (UI-state (display question_6_are_you_artistic_q)
                     (relation-asserted question_6_are_you_artistic)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_6_good_at_teaching ""

   (logical (question_5_good_at_academics Yes))

   =>

   (assert (UI-state (display question_6_good_at_teaching_q)
                     (relation-asserted question_6_good_at_teaching)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_4_work_at_mcmaster ""

   (logical (question_3_work_in_an_office Yes))

   =>

   (assert (UI-state (display question_4_work_at_mcmaster_q)
                     (relation-asserted question_4_work_at_mcmaster)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_5_decent_with_computers ""

   (logical (question_4_work_at_mcmaster No))

   =>

   (assert (UI-state (display question_5_decent_with_computers_q)
                     (relation-asserted question_5_decent_with_computers)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_6_good_at_coding ""

   (logical (question_5_decent_with_computers Yes))

   =>

   (assert (UI-state (display question_6_good_at_coding_q)
                     (relation-asserted question_6_good_at_coding)
                     (response No)
                     (valid-answers No Yes))))

(defrule determine-question_5_good_at_science ""

   (logical (question_4_work_at_mcmaster Yes))

   =>

   (assert (UI-state (display question_5_good_at_science_q)
                     (relation-asserted question_5_good_at_science)
                     (response No)
                     (valid-answers No Yes))))

;;;****************
;;;* REPAIR RULES *
;;;****************

(defrule e-end_path_intern_apprentice ""

   (logical (question_3_artistic_talent No))
   
   =>

   (assert (UI-state (display end_path_intern_apprentice_t)
                     (state final))))

(defrule e-end_path_performer_musician ""

   (logical (question_3_artistic_talent Yes))
   
   =>

   (assert (UI-state (display end_path_performer_musician_t)
                     (state final))))

(defrule e-end_path_world_traveller ""

   (logical (question_3_stay_in_hamilton No))
   
   =>

   (assert (UI-state (display end_path_world_traveller_t)
                     (state final))))

(defrule e-end_path_couch_potato ""

   (logical (question_4_use_your_brain No))

   =>

   (assert (UI-state (display end_path_couch_potato_t)
                     (state final))))

(defrule e-end_path_summer_student ""

   (logical (question_4_use_your_brain Yes))

   =>

   (assert (UI-state (display end_path_summer_student_t)
                     (state final))))

(defrule e-end_path_provincial_park_employee ""

   (logical (question_5_camping Yes))

   =>

   (assert (UI-state (display end_path_provincial_park_employee_t)
                     (state final))))
   
(defrule e-end_path_fruit_picker ""

   (logical (question_5_camping No))
   
   =>

   (assert (UI-state (display end_path_fruit_picker_t)
                     (state final))))
   
(defrule e-end_path_farm_labourner ""

   (logical (question_6_animals Yes))

   =>

   (assert (UI-state (display end_path_farm_labourner_t)
                     (state final))))
                     
(defrule e-end_path_landscaper ""
   
   (logical (question_6_animals No))
   
   =>

   (assert (UI-state (display end_path_landscaper_t)
                     (state final))))

(defrule e-end_path_tree_planter ""

   (logical (question_5_showering_infrequently Yes))
   
   =>

   (assert (UI-state (display end_path_tree_planter_t)
                     (state final))))
                     
(defrule e-end_path_sales_clerk ""

   (logical (question_7_afraid_of_needles Yes))
      
   =>

   (assert (UI-state (display end_path_sales_clerk_t)
                     (state final))))

(defrule e-end_path_medical_test_subject ""

   (logical (question_7_afraid_of_needles No))
      
   =>

   (assert (UI-state (display end_path_medical_test_subject_t)
                     (state final))))

(defrule e-end_path_brand_promoter ""

   (logical (question_6_fine_with_travelling Yes))
      
   =>

   (assert (UI-state (display end_path_brand_promoter_t)
                     (state final))))

(defrule e-end_path_sport_referee ""

   (logical (question_7_good_swimmer No))
      
   =>

   (assert (UI-state (display end_path_sport_referee_t)
                     (state final))))

(defrule e-end_path_lifeguard ""

   (logical (question_7_good_swimmer Yes))
      
   =>

   (assert (UI-state (display end_path_lifeguard_t)
                     (state final))))

(defrule e-end_path_security_guard ""

   (logical (question_6_bulky Yes))
      
   =>

   (assert (UI-state (display end_path_security_guard_t)
                     (state final))))

(defrule e-end_path_grocery_store_employee ""

   (logical (question_6_getting_a_bit_greasy Yes))
      
   =>

   (assert (UI-state (display end_path_grocery_store_employee_t)
                     (state final))))

(defrule e-end_path_prep_cook ""

   (logical (question_7_like_burgers No))
      
   =>

   (assert (UI-state (display end_path_prep_cook_t)
                     (state final))))

(defrule e-end_path_fast_food_restaurant_employee ""

   (logical (question_7_like_burgers Yes))
      
   =>

   (assert (UI-state (display end_path_fast_food_restaurant_employee_t)
                     (state final))))

(defrule e-end_path_barrista ""

   (logical (question_6_difference_between_manhattan No))
      
   =>

   (assert (UI-state (display end_path_barrista_t)
                     (state final))))

(defrule e-end_path_bartender ""

   (logical (question_6_difference_between_manhattan Yes))
      
   =>

   (assert (UI-state (display end_path_bartender_t)
                     (state final))))

(defrule e-end_path_museum_interpreter ""

   (logical (question_5_want_to_work_outside No))
      
   =>

   (assert (UI-state (display end_path_museum_interpreter_t)
                     (state final))))

(defrule e-end_path_summer_camp_leader ""

   (logical (question_5_want_to_work_outside Yes))
      
   =>

   (assert (UI-state (display end_path_summer_camp_leader_t)
                     (state final))))

(defrule e-end_path_small_business_owner ""

   (logical (question_6_are_you_artistic No))
      
   =>

   (assert (UI-state (display end_path_small_business_owner_t)
                     (state final))))

(defrule e-end_path_performer ""

   (logical (question_6_are_you_artistic Yes))
      
   =>

   (assert (UI-state (display end_path_performer_t)
                     (state final))))

(defrule e-end_path_usra_recipient ""

   (logical (question_6_good_at_teaching No))
      
   =>

   (assert (UI-state (display end_path_usra_recipient_t)
                     (state final))))

(defrule e-end_path_tutor ""

   (logical (question_6_good_at_teaching Yes))
      
   =>

   (assert (UI-state (display end_path_tutor_t)
                     (state final))))

(defrule e-end_path_civil_servant ""

   (logical (question_5_decent_with_computers No))
      
   =>

   (assert (UI-state (display end_path_civil_servant_t)
                     (state final))))

(defrule e-end_path_admin_assistant ""

   (logical (question_6_good_at_coding No))
      
   =>

   (assert (UI-state (display end_path_admin_assistant_t)
                     (state final))))

(defrule e-end_path_software_developer ""

   (logical (question_6_good_at_coding Yes))
      
   =>

   (assert (UI-state (display end_path_software_developer_t)
                     (state final))))

(defrule e-end_path_mcmaster_office_assistant ""

   (logical (question_5_good_at_science No))
      
   =>

   (assert (UI-state (display end_path_mcmaster_office_assistant_t)
                     (state final))))

(defrule e-end_path_mcmaster_research_assistant ""

   (logical (question_5_good_at_science Yes))
      
   =>

   (assert (UI-state (display end_path_mcmaster_research_assistant_t)
                     (state final))))
                     
                     
;;;*************************
;;;* GUI INTERACTION RULES *
;;;*************************

(defrule ask-question

   (declare (salience 5))
   
   (UI-state (id ?id))
   
   ?f <- (state-list (sequence $?s&:(not (member$ ?id ?s))))
             
   =>
   
   (modify ?f (current ?id)
              (sequence ?id ?s))
   
   (halt))

(defrule handle-next-no-change-none-middle-of-chain

   (declare (salience 10))
   
   ?f1 <- (next ?id)

   ?f2 <- (state-list (current ?id) (sequence $? ?nid ?id $?))
                      
   =>
      
   (retract ?f1)
   
   (modify ?f2 (current ?nid))
   
   (halt))

(defrule handle-next-response-none-end-of-chain

   (declare (salience 10))
   
   ?f <- (next ?id)

   (state-list (sequence ?id $?))
   
   (UI-state (id ?id)
             (relation-asserted ?relation))
                   
   =>
      
   (retract ?f)

   (assert (add-response ?id)))   

(defrule handle-next-no-change-middle-of-chain

   (declare (salience 10))
   
   ?f1 <- (next ?id ?response)

   ?f2 <- (state-list (current ?id) (sequence $? ?nid ?id $?))
     
   (UI-state (id ?id) (response ?response))
   
   =>
      
   (retract ?f1)
   
   (modify ?f2 (current ?nid))
   
   (halt))

(defrule handle-next-change-middle-of-chain

   (declare (salience 10))
   
   (next ?id ?response)

   ?f1 <- (state-list (current ?id) (sequence ?nid $?b ?id $?e))
     
   (UI-state (id ?id) (response ~?response))
   
   ?f2 <- (UI-state (id ?nid))
   
   =>
         
   (modify ?f1 (sequence ?b ?id ?e))
   
   (retract ?f2))
   
(defrule handle-next-response-end-of-chain

   (declare (salience 10))
   
   ?f1 <- (next ?id ?response)
   
   (state-list (sequence ?id $?))
   
   ?f2 <- (UI-state (id ?id)
                    (response ?expected)
                    (relation-asserted ?relation))
                
   =>
      
   (retract ?f1)

   (if (neq ?response ?expected)
      then
      (modify ?f2 (response ?response)))
      
   (assert (add-response ?id ?response)))   

(defrule handle-add-response

   (declare (salience 10))
   
   (logical (UI-state (id ?id)
                      (relation-asserted ?relation)))
   
   ?f1 <- (add-response ?id ?response)
                
   =>
      
   (str-assert (str-cat "(" ?relation " " ?response ")"))
   
   (retract ?f1))   

(defrule handle-add-response-none

   (declare (salience 10))
   
   (logical (UI-state (id ?id)
                      (relation-asserted ?relation)))
   
   ?f1 <- (add-response ?id)
                
   =>
      
   (str-assert (str-cat "(" ?relation ")"))
   
   (retract ?f1))   

(defrule handle-prev

   (declare (salience 10))
      
   ?f1 <- (prev ?id)
   
   ?f2 <- (state-list (sequence $?b ?id ?p $?e))
                
   =>
   
   (retract ?f1)
   
   (modify ?f2 (current ?p))
   
   (halt))
   
