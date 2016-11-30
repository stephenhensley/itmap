#This is a script to generate a template set of issues,
#    it will later be developed to be a utility that can be 
#    used to set up milestones, as well as default assignees, etc.

#define issue descriptions and titles.
LINE_CHAR="<br/>"
#START_CHECKLIST="<li><input type="checkbox">"
#START_CHECKLIST="<ul><li>"
#START_CHECKLIST="<ul><li>[ ] "
START_CHECKLIST="<ul><li><input type="checkbox" class="task-list-item-checkbox">"
START_BULLETLIST="<li>"
CLOSE_CHECKLIST="</li></ul>"
CLOSE_BULLETLIST="</li>"


ISSUE_TEST_TITLE="TEST TITLE"
ISSUE_1_TITLE="Write Product Description"
ISSUE_2_TITLE="Add Product Photos"
ISSUE_3_TITLE="Product Specifications"
ISSUE_4_TITLE="Write Manual"
ISSUE_5_TITLE="Create and Order Packaging"
ISSUE_6_TITLE="Build Production Run"
ISSUE_7_TITLE="Test Production Run"
ISSUE_8_TITLE="Box Up Production Run"
ISSUE_9_TITLE="Setup Webpage"

ISSUE_TEST_DESC="This is a description of an issue."
ISSUE_1_DESC="Write Product Description for Module. Upon completion, add the product description to the top of the Wiki before closing."
ISSUE_2_DESC="Add product photos to <your repository>/Resources/Product_Photos"

ISSUE_3_DESC="Detail the following details in the wiki to be available for press releases and the manual:"
ISSUE_3_DESC+=$LINE_CHAR
ISSUE_3_DESC+=$START_CHECKLIST
ISSUE_3_DESC+="Product Depth"
ISSUE_3_DESC+=$CLOSE_BULLETLIST
ISSUE_3_DESC+=$START_BULLETLIST
ISSUE_3_DESC+="Product HP"
ISSUE_3_DESC+=$START_BULLETLIST
ISSUE_3_DESC+="Product Power Consumption"
ISSUE_3_DESC+=$CLOSE_CHECKLIST

ISSUE_4_DESC="Write and upload the manual to:"
ISSUE_4_DESC+=$LINE_CHAR
ISSUE_4_DESC+="<your repository>/Resources/<product_name>_Manual.pdf"

ISSUE_5_DESC="Account for the packaging of the product. If it has a common package as other products, close. Otherwise:"
ISSUE_5_DESC+=$LINE_CHAR
ISSUE_5_DESC+=$START_CHECKLIST
ISSUE_5_DESC+="Upload and Design Packaging"
ISSUE_5_DESC+=$CLOSE_BULLETLIST
ISSUE_5_DESC+=$START_BULLETLIST
ISSUE_5_DESC+="Order Packaging"
ISSUE_5_DESC+=$CLOSE_CHECKLIST
ISSUE_5_DESC+=$LINE_CHAR
ISSUE_5_DESC+="Close when packaging is accounted for."

ISSUE_6_DESC="Comments should be logged daily on build progress during build. When all production boards are built, log the final count in the Wiki and Close."
ISSUE_7_DESC="Comments should be logged daily on test progress during build. When all built modules are tested, log the both the number of duds and working modules."
ISSUE_8_DESC="Comments should be logged daily on packing progress during build. When all production models of the first run are in boxes, close this issue."

ISSUE_9_DESC="The website will need to be setup for the product. You will need at least:"
ISSUE_9_DESC+=$LINE_CHAR
ISSUE_9_DESC+=$START_CHECKLIST
ISSUE_9_DESC+="Product Photos"
ISSUE_9_DESC+=$CLOSE_BULLETLIST
ISSUE_9_DESC+=$START_BULLETLIST
ISSUE_9_DESC+="Dimensions"
ISSUE_9_DESC+=$CLOSE_BULLETLIST
ISSUE_9_DESC+=$START_BULLETLIST
ISSUE_9_DESC+="Product Description"
ISSUE_9_DESC+=$CLOSE_BULLETLIST
ISSUE_9_DESC+=$START_BULLETLIST
ISSUE_9_DESC+="Manual Page"
ISSUE_9_DESC+=$CLOSE_CHECKLIST
ISSUE_9_DESC+=$LINE_CHAR
ISSUE_9_DESC+="Check <your_repsository>/Resources for all required content. Close when Website is ready to go live."


echo "Opening First Issue"
ghi open -m "$ISSUE_1_DESC" "$ISSUE_1_TITLE";
echo  "Opening Second Issue"
ghi open -m "$ISSUE_2_DESC" "$ISSUE_2_TITLE";
echo  "Opening Third Issue"
ghi open -m "$ISSUE_3_DESC" "$ISSUE_3_TITLE";
echo  "Opening Fourth Issue"
ghi open -m "$ISSUE_4_DESC" "$ISSUE_4_TITLE";
echo  "Opening Fifth Issue"
ghi open -m "$ISSUE_5_DESC" "$ISSUE_5_TITLE";
echo  "Opening Sixth Issue"
ghi open -m "$ISSUE_6_DESC" "$ISSUE_6_TITLE";
echo "Opening Seventh Issue"
ghi open -m "$ISSUE_7_DESC" "$ISSUE_7_TITLE";
echo "Opening Eighth Issue"
ghi open -m "$ISSUE_8_DESC" "$ISSUE_8_TITLE";
echo  "Opening Ninth Issue"
ghi open -m "$ISSUE_9_DESC" "$ISSUE_9_TITLE";
