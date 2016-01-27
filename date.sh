#!/bin/bash
# **Month Start and End date**

month_year=$(date +'%m %Y' | awk '!--$1{$1=12;$2--}1')
m=${month_year% *}
y=${month_year##* }
d=$(cal $m $y | paste -s - | awk '{print $NF}')
first_date=$(printf '01-%02s-%s' $m $y)
last_date=$(printf '%s-%02s-%s' $d $m $y)
echo "Previous Month: "$first_date $last_date

# **Current Month Start and End date**

month_year=$(date +'%m %Y' | awk '!$1{$1=12;$2--}1')
m=${month_year% *}
y=${month_year##* }
d=$(cal $m $y | paste -s - | awk '{print $NF}')
first_date=$(printf '01-%02s-%s' $m $y)
last_date=$(printf '%s-%02s-%s' $d $m $y)
echo "Current Month: "$first_date $last_date

# **Next Month Start and End date**

month_year=$(date +'%m %Y' | awk '!++$1{$1=12;$2--}1')
m=${month_year% *}
y=${month_year##* }
d=$(cal $m $y | paste -s - | awk '{print $NF}')
first_date=$(printf '01-%02s-%s' $m $y)
last_date=$(printf '%s-%02s-%s' $d $m $y)
echo "Next Month: "$first_date $last_date
