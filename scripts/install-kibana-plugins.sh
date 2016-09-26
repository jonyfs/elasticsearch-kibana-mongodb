/opt/kibana/bin/kibana-plugin install timelion
/opt/kibana/bin/kibana plugin install logtrail
/opt/kibana/bin/kibana plugin install kaae https://github.com/elasticfence/kaae/releases/download/snapshot/kaae-latest.tar.gz
/opt/kibana/bin/kibana plugin -i prelert_swimlane_vis -u https://github.com/prelert/kibana-swimlane-vis/archive/v0.1.0.tar.gz

git clone https://github.com/oxalide/kibana_metric_vis_colors.git
zip -r kibana_metric_vis_colors kibana_metric_vis_colors
$KIBANA_HOME/bin/kibana plugin --install metric-vis-colors -u file:///$HOME_DIRECTORY/kibana_metric_vis_colors.zip

