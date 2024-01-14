function [harmancurve]=harman(name,type,head)
if type=="onear"
    if name=="headphonecom"               
        harmancurve="headphonecom_harman_over-ear_2018";
    elseif name=="innerfidelity" 
        harmancurve="innerfidelity_harman_over-ear_2018";
    elseif name=="oratory1990"
        harmancurve="oratory1990";    
    elseif name=="rtings"
        harmancurve="rtings_harman_over-ear_2018";    
    elseif (name=="referenceaudioanalyzer" & checkreferenceaudioanalyzer(head)==1)
        harmancurve="C_referenceaudioanalyzer_hdm-x_harman_over-ear_2018";    
    elseif (name=="referenceaudioanalyzer" & checkreferenceaudioanalyzer(head)==2)
        harmancurve="B_referenceaudioanalyzer_hdm1_harman_over-ear_2018";       
    end   
        
elseif (type=="inear" || type=="earbud")
    if name=="headphonecom" 
        harmancurve="headphonecom_harman_in-ear_2019v2";    
    elseif name=="innerfidelity"
        harmancurve="innerfidelity_harman_in-ear_2019v2";
    elseif name=="oratory1990"
        harmancurve="harman_in-ear_2019v2";        
    elseif name=="rtings"
        harmancurve="rtings_harman_in-ear_2019v2";    
    elseif name=="referenceaudioanalyzer"
        harmancurve="A_referenceaudioanalyzer_siec_harman_in-ear_2019v2";
    end
end
end