function [harmancurve]=harman2(name)

    if name=='headphonecom'               
        harmancurve="headphonecom_harman_over-ear_2018";
    elseif name=="innerfidelity" 
        harmancurve="innerfidelity_harman_over-ear_2018";
    elseif name=="oratory1990"
        harmancurve="oratory1990";    
    elseif name=="rtings"
        harmancurve="rtings_harman_over-ear_2018";    
    elseif name=="referenceaudioanalyzer" 
        harmancurve="C_referenceaudioanalyzer_hdm-x_harman_over-ear_2018";    
    end
end
