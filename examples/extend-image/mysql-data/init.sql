/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : ruddor

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 10/06/2021 12:40:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_authentication
-- ----------------------------
DROP TABLE IF EXISTS `sys_authentication`;
CREATE TABLE `sys_authentication` (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_type` varchar(255) DEFAULT NULL,
  `auth_payload` text,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_authentication
-- ----------------------------
BEGIN;
INSERT INTO `sys_authentication` VALUES (12, 'oauth', '{\"clientId\":\"ruddor\",\"clientSecret\":\"dc025cdb-e07f-4bb5-9dc4-4365f6b31f60\",\"authorizationURL\":\"https://keycloak-ruddor.apps.dev.ocp.local/auth/realms/ruddor/protocol/openid-connect/auth\",\"tokenURL\":\"https://keycloak-ruddor.apps.dev.ocp.local/auth/realms/ruddor/protocol/openid-connect/token\",\"resourceURL\":\"https://keycloak-ruddor.apps.dev.ocp.local/auth/realms/ruddor/protocol/openid-connect/userinfo\",\"redirectURL\":\"http://localhost:4200/sessions/callback\",\"userIdentifier\":\"preferred_username\",\"scopes\":\"openid\"}');
COMMIT;

-- ----------------------------
-- Table structure for sys_cluster
-- ----------------------------
DROP TABLE IF EXISTS `sys_cluster`;
CREATE TABLE `sys_cluster` (
  `cluster_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cluster_name` varchar(100) DEFAULT NULL COMMENT '组名称',
  `cluster_description` varchar(100) DEFAULT NULL COMMENT '描述',
  `cluster_type` varchar(255) DEFAULT NULL COMMENT '集群类型',
  `api_address` varchar(255) DEFAULT NULL COMMENT 'Api地址',
  `oauth_address` varchar(255) DEFAULT NULL COMMENT 'oauth地址',
  `ws_address` varchar(255) DEFAULT NULL COMMENT 'websocket',
  `prometheus_address` varchar(255) DEFAULT NULL COMMENT 'prometheus地址',
  `alertmanager_address` varchar(255) DEFAULT NULL COMMENT 'alertmanager地址',
  `es_address` varchar(255) DEFAULT NULL COMMENT 'elasticsearch地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `jenkins_address` varchar(255) DEFAULT NULL COMMENT 'jenkins地址',
  `kiali_address` varchar(255) DEFAULT NULL COMMENT 'kiali地址',
  `tracing_address` varchar(255) DEFAULT NULL COMMENT 'jeager地址',
  `cluster_status` tinyint(4) DEFAULT NULL COMMENT '集群状态',
  `create_user_id` bigint(20) DEFAULT NULL,
  `istiopmth_address` varchar(255) DEFAULT NULL,
  `workflow_enabled` tinyint(4) DEFAULT NULL,
  `cluster_token` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`cluster_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='组';

-- ----------------------------
-- Records of sys_cluster
-- ----------------------------
BEGIN;
INSERT INTO `sys_cluster` VALUES (1, 'OCP46-vmware', 'OCP46', 'openshift4', 'https://api.dev.ocp.local:6443', 'https://oauth-openshift.apps.dev.ocp.local', 'wss://api.dev.ocp.local:6443', 'https://prometheus-k8s-openshift-monitoring.apps.dev.ocp.local', 'https://alertmanager-main-openshift-monitoring.apps.dev.ocp.local', 'https://es-openshift-logging.apps.dev.ocp.local', '2021-03-31 14:18:44', '', 'https://kiali-istio-system.apps.dev.ocp.local', 'https://jaeger-portal-istio-system.apps.dev.ocp.local', 1, 1, 'https://portal-prom-istio-istio-system.apps.dev.ocp.local', NULL, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IndVWGdTQU14YkZNYUVlZlIwUEJ0MkRQcnpCMFdVM040YW8tT3VHV0pMTjgifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJvcGVuc2hpZnQtbWFjaGluZS1jb25maWctb3BlcmF0b3IiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlY3JldC5uYW1lIjoiZGVmYXVsdC10b2tlbi05ZHJycCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50Lm5hbWUiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQudWlkIjoiNGRmMGMxNDItYWNiOC00MWQ3LWJmMzYtODFkYWQxMGZkYjMzIiwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50Om9wZW5zaGlmdC1tYWNoaW5lLWNvbmZpZy1vcGVyYXRvcjpkZWZhdWx0In0.OclnRXCx9LxEw2nyBGicj0M36v6XzRzm62d0JI_LwzNmfwwFQI0_xdgNtlCiqJ9-E2a9oUdJZZKybbjg-_Px5BwjanfrzQqesZVijW3cJXnJjcK0Hzlkjqez5zy0fSY4xr8gdkamyjK7qc4wIUd4oFUStpjsk6vBr7JLuxTJR67wA8yk31P0wgKnj5OQiGnRA8cYITKbfsYyrSg7euKvQi5FdUvZ5gFnCXa7CDyXNo9b0hLvoBMFhYtt1-2O_j-LVwyWQOVusAS-CsCrqFjmKKmjTe_McLlToUfZSzsx4r6f5isTMDatvMjqGsMCIsBlHI9x-8IG8eg4PT1taYcA-Q');
INSERT INTO `sys_cluster` VALUES (8, 'OCPlab2', '', 'openshift4', 'https://api.ocp2.rd.paas.pek2.redhat.com:6443', 'https://oauth-openshift.apps.ocp2.rd.paas.pek2.redhat.com', 'wss://api.ocp2.rd.paas.pek2.redhat.com:6443', 'https://thanos-querier-openshift-monitoring.apps.ocp2.rd.paas.pek2.redhat.com', 'https://alertmanager-main-openshift-monitoring.apps.ocp2.rd.paas.pek2.redhat.com', '', '2021-05-11 16:28:37', '', '', '', 0, 1, '', NULL, 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImhXQkhTdDFNR2duSnozQk5xUE5HMXFIb0JSdjlQd3R0MkN5d1A4RDQzd2sifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJvcGVuc2hpZnQtbWFjaGluZS1jb25maWctb3BlcmF0b3IiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlY3JldC5uYW1lIjoiZGVmYXVsdC10b2tlbi1ta2NkdiIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50Lm5hbWUiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQudWlkIjoiMzZkNTk3NGUtNWNlNy00ZTJkLWI2MWUtZDRlODVhZDFmNmFkIiwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50Om9wZW5zaGlmdC1tYWNoaW5lLWNvbmZpZy1vcGVyYXRvcjpkZWZhdWx0In0.raKKxAa53o3n3GgegewzZVBPkuY9A2fp8ab6Jeufbb5-baiyrVksB4ATwrXkYJV_F3sHkSfa87W_01_XwQ7W8hlYgrv4ZK9jh115UOpfEfFR3E0WbutmxxGRIYqZ0YWAuGLq4KiqhTIqle_16kBJ8fh6oDX99I3fkoEV65sBgOYQE-zSx61fneZmnTrex0t81O11w2BTLqaEiDFyspFr5QnyYOO6jm0YUmMjQiJignTGCILRfw0D10jJIsCtOPm5gLZag5e8mhPFS-T78MUl_ujqfxoQkNAcTRSKwf9THBGHnxnhL6_Dt-qDRI7p7bwFMnVwixGYZrkFBn1MKLywdg');
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` bigint(20) NOT NULL,
  `workflow_enabled` tinyint(4) DEFAULT NULL,
  `tenant_enabled` tinyint(4) DEFAULT NULL,
  `gitops_token` longblob,
  `cloud_shell_Image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `gitops_url` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `workflow_server` varchar(255) DEFAULT NULL,
  `artifact_hub` varchar(255) DEFAULT NULL,
  `auth_method` varchar(255) DEFAULT NULL,
  `oauth_enabled` tinyint(4) DEFAULT NULL,
  `internal_auth_enabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, 0, 1, 0x65794A68624763694F694A49557A49314E694973496E523563434936496B705856434A392E65794A7164476B694F6949795A5459335A4467784D6931694E7A517A4C5451314E546774596D59795A69316A4E6D59784E4759344E44517A4D7A51694C434A70595851694F6A45324D6A45784E5451774D7A5573496D6C7A63794936496D46795A32396A5A434973496D35695A6949364D5459794D5445314E44417A4E53776963335669496A6F69595752746157346966512E424A6B576844447A314454487372596658765163465366377A6E47776730315F42486D315771304D35506B, 'registry.redhat.io/rhel8/support-tools', 'https://ruddor-gitops-server-ruddor.apps.dev.ocp.local', 'http://processocp-ruddor.apps.dev.ocp.local', 'https://artifacthub.io', NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_group`;
CREATE TABLE `sys_group` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) DEFAULT NULL COMMENT '组名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组';

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` longblob COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `cluster_id` bigint(20) DEFAULT NULL COMMENT '集群ID',
  `action` varchar(255) DEFAULT NULL,
  `cluster_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES (1, 'admin', 'POST', '/sys/log/delete', 0x5B323632385D, NULL, '2021-06-01 11:10:42', 1, NULL, 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (2, 'admin', 'POST', '/sys/validate', NULL, NULL, '2021-06-09 12:25:41', NULL, 'User Login(SSO)', NULL);
INSERT INTO `sys_log` VALUES (3, 'admin', 'POST', '/sys/validate', NULL, NULL, '2021-06-09 12:25:58', NULL, 'User Login(SSO)', NULL);
INSERT INTO `sys_log` VALUES (4, 'admin', 'POST', '/sys/validate', NULL, NULL, '2021-06-09 12:35:49', NULL, 'User Login(SSO)', NULL);
INSERT INTO `sys_log` VALUES (5, 'admin', 'POST', '/sys/validate', NULL, NULL, '2021-06-09 12:36:39', NULL, 'User Login(SSO)', NULL);
INSERT INTO `sys_log` VALUES (6, 'admin', 'POST', '/sys/project/stats', 0x7B2270726F6A656374223A226F70656E73686966742D6D6F6E69746F72696E67222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:48:30', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (7, 'admin', 'POST', '/sys/project/users', 0x7B2270726F6A6563744E616D65223A226F70656E73686966742D6D6F6E69746F72696E67222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:48:30', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (8, 'admin', 'POST', '/sys/project/users', 0x7B2270726F6A6563744E616D65223A226D792D616D712D62726F6B6572222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:48:38', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (9, 'admin', 'POST', '/sys/project/stats', 0x7B2270726F6A656374223A226D792D616D712D62726F6B6572222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:48:38', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (10, 'admin', 'POST', '/sys/project/users', 0x7B2270726F6A6563744E616D65223A226F70656E73686966742D696E67726573732D6F70657261746F72222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:48:42', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (11, 'admin', 'POST', '/sys/project/stats', 0x7B2270726F6A656374223A226F70656E73686966742D696E67726573732D6F70657261746F72222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:48:42', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (12, 'admin', 'POST', '/sys/project/users', 0x7B2270726F6A6563744E616D65223A226F70656E73686966742D6D6F6E69746F72696E67222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:48:46', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (13, 'admin', 'POST', '/sys/project/stats', 0x7B2270726F6A656374223A226F70656E73686966742D6D6F6E69746F72696E67222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:48:46', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (14, 'admin', 'POST', '/sys/project/users', 0x7B2270726F6A6563744E616D65223A22626F6F6B696E666F222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:55:15', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (15, 'admin', 'POST', '/sys/project/stats', 0x7B2270726F6A656374223A22626F6F6B696E666F222C22636C75737465724964223A2231227D, NULL, '2021-06-09 12:55:15', 1, '', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (16, 'admin', 'GET', '/sys/user/logout', NULL, NULL, '2021-06-09 12:56:28', NULL, 'User Logout', NULL);
INSERT INTO `sys_log` VALUES (17, 'admin', 'POST', '/sys/validate', NULL, NULL, '2021-06-09 12:57:25', NULL, 'User Login(SSO)', NULL);
INSERT INTO `sys_log` VALUES (18, 'admin', 'POST', '/apis/build.openshift.io/v1/namespaces/ruddor/buildconfigs/ruddor-web/instantiate', 0x7B226B696E64223A224275696C6452657175657374222C2261706956657273696F6E223A226275696C642E6F70656E73686966742E696F2F7631222C226D65746164617461223A7B226E616D65223A22727564646F722D776562227D7D, NULL, '2021-06-09 13:18:32', 1, 'Start Build', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (19, 'admin', 'PATCH', '/apis/build.openshift.io/v1/namespaces/ruddor/builds/ruddor-web-11', 0x5B7B226F70223A22616464222C2270617468223A222F7374617475732F63616E63656C6C6564222C2276616C7565223A747275657D5D, NULL, '2021-06-09 13:18:44', 1, 'Cancel Build', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (20, 'admin', 'POST', '/apis/monitoring.coreos.com/v1/namespaces/ruddor/prometheusrules', 0x7B2261706956657273696F6E223A226D6F6E69746F72696E672E636F72656F732E636F6D2F7631222C226B696E64223A2250726F6D65746865757352756C65222C226D65746164617461223A7B226E616D65223A22676F67732D72756C65222C226E616D657370616365223A22727564646F72222C226C6162656C73223A7B2270726F6D657468657573223A226B3873222C22726F6C65223A22616C6572742D72756C6573227D7D2C2273706563223A7B2267726F757073223A5B7B2272756C6573223A5B7B22616C657274223A2264736661222C22616E6E6F746174696F6E73223A7B226D657373616765223A2272656769737472792D636F6E736F6C65227D2C2265787072223A2273756D20627920286E616D6573706163652C20706F642920286B7562655F706F645F7374617475735F70686173657B6E616D6573706163653D7E5C22727564646F725C222C706F643D7E5C226D7973716C2D332E2A5C222C7068617365213D5C2252756E6E696E675C227D29203E2030222C226C6162656C73223A7B227365766572697479223A227761726E696E67227D2C22666F72223A223173227D5D2C226E616D65223A22736572227D5D7D7D, NULL, '2021-06-09 13:52:56', 1, NULL, 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (21, 'admin', 'POST', '/api/v1/namespaces/openshift-monitoring/configmaps', 0x7B2261706956657273696F6E223A227631222C226B696E64223A22436F6E6669674D6170222C226D65746164617461223A7B226E616D65223A22636C75737465722D6D6F6E69746F72696E672D636F6E666967222C226E616D657370616365223A226F70656E73686966742D6D6F6E69746F72696E67227D2C2264617461223A7B22636F6E6669672E79616D6C223A22656E61626C6555736572576F726B6C6F61643A207472756520227D7D, NULL, '2021-06-09 14:11:08', 1, 'Configmap Created', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (22, 'admin', 'POST', '/apis/monitoring.coreos.com/v1/namespaces/openshift-user-workload-monitoring/prometheusrules', 0x7B2261706956657273696F6E223A226D6F6E69746F72696E672E636F72656F732E636F6D2F7631222C226B696E64223A2250726F6D65746865757352756C65222C226D65746164617461223A7B226E616D65223A2274657374222C226E616D657370616365223A226F70656E73686966742D757365722D776F726B6C6F61642D6D6F6E69746F72696E67222C226C6162656C73223A7B2270726F6D657468657573223A226B3873222C22726F6C65223A22616C6572742D72756C6573227D7D2C2273706563223A7B2267726F757073223A5B7B2272756C6573223A5B7B22616C657274223A2262757379626F78222C22616E6E6F746174696F6E73223A7B226D657373616765223A22617070227D2C2265787072223A2273756D286E6F64655F6E616D6573706163655F706F645F636F6E7461696E65723A636F6E7461696E65725F6370755F75736167655F7365636F6E64735F746F74616C3A73756D5F726174657B6E616D6573706163653D5C226F70656E73686966742D757365722D776F726B6C6F61642D6D6F6E69746F72696E675C222C20706F643D5C2270726F6D6574686575732D6F70657261746F722D363739663536383762382D68707362705C222C636F6E7461696E6572213D5C22504F445C227D29202F20636F756E74286E6F64655F6E616D6573706163655F706F645F636F6E7461696E65723A636F6E7461696E65725F6370755F75736167655F7365636F6E64735F746F74616C3A73756D5F726174657B6E616D6573706163653D5C226F70656E73686966742D757365722D776F726B6C6F61642D6D6F6E69746F72696E675C222C20706F643D5C2270726F6D6574686575732D6F70657261746F722D363739663536383762382D68707362705C222C636F6E7461696E6572213D5C22504F445C227D29202A20313030203E2031222C226C6162656C73223A7B227365766572697479223A227761726E696E67227D2C22666F72223A223173227D5D2C226E616D65223A22617070227D5D7D7D, NULL, '2021-06-09 14:13:40', 1, NULL, 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (23, 'admin', 'POST', '/sys/validate', NULL, NULL, '2021-06-10 10:24:48', NULL, 'User Login(SSO)', NULL);
INSERT INTO `sys_log` VALUES (24, 'admin', 'PUT', '/sys/cluster/update', 0x7B22636C75737465724964223A312C22636C75737465724E616D65223A224F435034362D766D77617265222C22636C75737465724465736372697074696F6E223A224F43503436222C22636C757374657254797065223A226F70656E736869667434222C2261706941646472657373223A2268747470733A2F2F6170692E6465762E6F63702E6C6F63616C3A36343433222C226F6175746841646472657373223A2268747470733A2F2F6F617574682D6F70656E73686966742E617070732E6465762E6F63702E6C6F63616C222C22777341646472657373223A2268747470733A2F2F6170692E6465762E6F63702E6C6F63616C3A36343433222C2270726F6D65746865757341646472657373223A2268747470733A2F2F70726F6D6574686575732D6B38732D6F70656E73686966742D6D6F6E69746F72696E672E617070732E6465762E6F63702E6C6F63616C222C22616C6572746D616E6167657241646472657373223A2268747470733A2F2F616C6572746D616E616765722D6D61696E2D6F70656E73686966742D6D6F6E69746F72696E672E617070732E6465762E6F63702E6C6F63616C222C22657341646472657373223A2268747470733A2F2F65732D6F70656E73686966742D6C6F6767696E672E617070732E6465762E6F63702E6C6F63616C222C226A656E6B696E7341646472657373223A22222C226B69616C6941646472657373223A2268747470733A2F2F6B69616C692D697374696F2D73797374656D2E617070732E6465762E6F63702E6C6F63616C222C2274726163696E6741646472657373223A2268747470733A2F2F6A61656765722D706F7274616C2D697374696F2D73797374656D2E617070732E6465762E6F63702E6C6F63616C222C22697374696F706D746841646472657373223A2268747470733A2F2F706F7274616C2D70726F6D2D697374696F2D697374696F2D73797374656D2E617070732E6465762E6F63702E6C6F63616C222C2263726561746554696D65223A22323032312D30332D33315430363A31383A34342E3030302B30303030222C22636C7573746572537461747573223A312C22637265617465557365724964223A312C22776F726B666C6F77456E61626C6564223A6E756C6C2C22636C7573746572546F6B656E223A2265794A68624763694F694A53557A49314E694973496D74705A434936496E64565747645451553134596B5A4E5955566C5A6C497755454A304D6B5251636E70434D4664564D30343059573874543356485630704D546A676966512E65794A7063334D694F694A7264574A6C636D356C6447567A4C334E6C636E5A705932566859324E766457353049697769613356695A584A755A58526C637935706279397A5A584A3261574E6C59574E6A62335675644339755957316C63334268593255694F694A7663475675633268705A6E51746257466A61476C755A53316A6232356D615763746233426C636D4630623349694C434A7264574A6C636D356C6447567A4C6D6C764C334E6C636E5A705932566859324E76645735304C334E6C59334A6C644335755957316C496A6F695A47566D59585673644331306232746C626930355A484A7963434973496D7431596D5679626D56305A584D756157387663325679646D6C6A5A57466A59323931626E517663325679646D6C6A5A53316859324E76645735304C6D3568625755694F694A6B5A575A686457783049697769613356695A584A755A58526C637935706279397A5A584A3261574E6C59574E6A623356756443397A5A584A3261574E6C4C57466A59323931626E517564576C6B496A6F694E47526D4D474D784E44497459574E694F4330304D5751334C574A6D4D7A59744F44466B595751784D475A6B596A4D7A4969776963335669496A6F6963336C7A644756744F6E4E6C636E5A705932566859324E76645735304F6D39775A57357A61476C6D6443317459574E6F6157356C4C574E76626D5A705A7931766347567959585276636A706B5A575A6864577830496E302E4F636C6E52584378394C784577326E79424769636A304D33367636587A527A6D363264304A495F4C777A4E6D667777465149305F7864674E746C4369714A392D453261396F55644A5A5A4B7962626A672D5F50783542776A616E66727A517165735A56696A5733634A586E4A6A634B30487A6C6B6A71657A357A79306653593478723867646B616D796A4B3771633477495564346F46555374706A736B36764272374A4C7578544A523637774138796B3331503077674B6E6A354F5169476E524138635949544B62667359797253673765754B76516935466455765A3567466E43586137434479584E6F396230684C766F424D4668597474312D324F5F6A2D4C56777957514F56757341532D4373437271466A6D4B4B6D6A54655F4D634C6C546F55665A537A737834723666356973544D446174764D6A7147734D434973426C484939782D3849473865673450543174615963412D51227D, NULL, '2021-06-10 10:50:41', 1, 'Update Cluster', 'OCP46-vmware');
INSERT INTO `sys_log` VALUES (25, 'admin', 'POST', '/apis/machineconfiguration.openshift.io/v1/machineconfigs', 0x7B2261706956657273696F6E223A226D616368696E65636F6E66696775726174696F6E2E6F70656E73686966742E696F2F7631222C226B696E64223A224D616368696E65436F6E666967222C226D65746164617461223A7B226C6162656C73223A7B226D616368696E65636F6E66696775726174696F6E2E6F70656E73686966742E696F2F726F6C65223A22776F726B6572227D2C226E616D65223A2239392D776F726B65722D6368726F6E792D636F6E66696775726174696F6E227D2C2273706563223A7B22636F6E666967223A7B2269676E6974696F6E223A7B22636F6E666967223A7B7D2C227365637572697479223A7B22746C73223A7B7D7D2C2274696D656F757473223A7B7D2C2276657273696F6E223A22332E312E30227D2C226E6574776F726B64223A7B7D2C22706173737764223A7B7D2C2273746F72616765223A7B2266696C6573223A5B7B22636F6E74656E7473223A7B22736F75726365223A22646174613A746578742F706C61696E3B636861727365743D7574662D383B6261736536342C63325679646D5679494735306344457559577870655856754C6D4E7662534270596E56796333514B5A484A705A6E526D6157786C494339325958497662476C694C324E6F636D39756553396B636D6C6D644170745957746C6333526C634341784C6A41674D77707964474E7A6557356A436D78765A32527063694176646D46794C3278765A79396A61484A76626E6B4B222C22766572696669636174696F6E223A7B7D7D2C2266696C6573797374656D223A22726F6F74222C226D6F6465223A3432302C226F7665727772697465223A747275652C2270617468223A222F6574632F6368726F6E792E636F6E66227D5D7D7D2C226F73496D61676555524C223A22227D7D, NULL, '2021-06-10 11:16:17', 1, 'Custom Create', 'OCP46-vmware');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, 0, 'Home', 'home', 'home', 0, 'home', 0);
INSERT INTO `sys_menu` VALUES (2, 0, 'Workloads', 'workload', 'workload', 0, 'category', 2);
INSERT INTO `sys_menu` VALUES (3, 0, 'Network', 'network', 'network', 0, 'shuffle', 3);
INSERT INTO `sys_menu` VALUES (4, 0, 'Storage', 'storage', 'storage', 0, 'storage', 4);
INSERT INTO `sys_menu` VALUES (5, 0, 'Resources', 'resource', 'resource', 0, 'file_copy', 5);
INSERT INTO `sys_menu` VALUES (6, 0, 'DevOps', 'devops', 'devops', 0, 'layers', 6);
INSERT INTO `sys_menu` VALUES (7, 0, 'Service Mesh', 'servicemesh', 'servicemesh', 0, 'blur_on', 8);
INSERT INTO `sys_menu` VALUES (8, 0, 'Monitoring & Alerts', 'monitoring', 'monitoring', 0, 'show_chart', 10);
INSERT INTO `sys_menu` VALUES (9, 0, 'System', 'system', 'system', 0, 'settings', 11);
INSERT INTO `sys_menu` VALUES (10, 1, 'Events', 'events', 'home:event', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (11, 1, 'Status', 'status', 'home:status', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (12, 2, 'Deployments', 'deployments', 'workload:deployment', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, 2, 'DeploymentConfigs', 'deploymentconfigs', 'workload:deploymentconfig', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (14, 2, 'StatefulSets', 'statefulsets', 'workload:statefulset', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (15, 2, 'DaemonSets', 'daemonsets', 'workload:daemonset', 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (16, 2, 'Jobs', 'jobs', 'workload:job', 1, NULL, 5);
INSERT INTO `sys_menu` VALUES (17, 2, 'Pods', 'pods', 'workload:pod', 1, NULL, 6);
INSERT INTO `sys_menu` VALUES (18, 2, 'Secrets', 'secrets', 'workload:secret', 1, NULL, 7);
INSERT INTO `sys_menu` VALUES (19, 2, 'ConfigMaps', 'configmaps', 'workload:configmap', 1, NULL, 8);
INSERT INTO `sys_menu` VALUES (20, 2, 'ReplicaSets', 'replicasets', 'workload:replicaset', 1, NULL, 9);
INSERT INTO `sys_menu` VALUES (21, 2, 'ReplicaControllers', 'replicacontrollers', 'workload:replicacontroller', 1, NULL, 10);
INSERT INTO `sys_menu` VALUES (22, 2, 'HPAS', 'hpas', 'workload:hpa', 1, NULL, 11);
INSERT INTO `sys_menu` VALUES (23, 3, 'Endpoints', 'endpoints', 'network:endpoint', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, 3, 'Services', 'services', 'network:service', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (25, 3, 'Routes', 'routes', 'network:route', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (26, 3, 'NetworkPolicies', 'networkpolicies', 'network:networkpolicy', 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (27, 3, 'Ingresses', 'ingresses', 'network:ingress', 1, NULL, 4);
INSERT INTO `sys_menu` VALUES (28, 4, 'PersistentVolume Claims', 'persistentvolumeclaims', 'storage:persistentvolumeclaim', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (29, 4, 'PersistentVolumes', 'persistentvolumes', 'storage:persistentvolume', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (30, 4, 'StorageClasses', 'storageclasses', 'storage:storageclass', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (31, 5, 'Quota', 'quotas', 'resource:quota', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (32, 5, 'ServiceAccount', 'serviceaccounts', 'resource:serviceaccount', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (33, 6, 'BuildConfigs', 'buildconfigs', 'devops:buildconfig', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (34, 6, 'Pipelines', 'pipelines', 'devops:pipeline', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (35, 6, 'Builds', 'builds', 'devops:build', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (36, 6, 'ImageStreams', 'imagestreams', 'devops:imagestream', 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (37, 7, 'Dashboard', 'dashboard', 'servicemesh:dashboard', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (38, 7, 'Service', 'service', 'servicemesh:service', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (39, 7, 'Topology', 'topology', 'servicemesh:topology', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (40, 7, 'Tracking', 'tracking', 'servicemesh:tracking', 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (41, 8, 'Pod', 'pod', 'monitoring:pod', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (42, 8, 'Project', 'project', 'monitoring:project', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (43, 8, 'Cluster', 'cluster', 'monitoring:cluster', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (44, 8, 'Node', 'node', 'monitoring:node', 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (45, 8, 'Alerts', 'alerts', 'monitoring:alert', 1, NULL, 4);
INSERT INTO `sys_menu` VALUES (46, 8, 'Alert Rules', 'alertrules', 'monitoring:alertrule', 1, NULL, 5);
INSERT INTO `sys_menu` VALUES (47, 9, 'Namespace', 'namespaces', 'system:namespace', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (48, 9, 'Node', 'nodes', 'system:node', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (49, 9, 'Role', 'roles', 'system:role', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (50, 9, 'RoleBinding', 'rolebindings', 'system:rolebinding', 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (51, 9, 'CustomResourceDefinition', 'customresourcedefinitions', 'system:customresourcedefinition', 1, NULL, 4);
INSERT INTO `sys_menu` VALUES (53, 9, 'Clusters', 'clusters', 'system:cluster', 1, NULL, 5);
INSERT INTO `sys_menu` VALUES (54, 9, 'Users', 'users', 'system:user', 1, NULL, 6);
INSERT INTO `sys_menu` VALUES (55, 9, 'UserRoles', 'userroles', 'system:userrole', 1, NULL, 7);
INSERT INTO `sys_menu` VALUES (57, 17, 'PodCreate', NULL, 'workload:pod:create', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (58, 17, 'PodList', NULL, 'workload:pod:list', 2, NULL, 1);
INSERT INTO `sys_menu` VALUES (59, 17, 'PodDetail', NULL, 'workload:pod:get', 2, NULL, 2);
INSERT INTO `sys_menu` VALUES (60, 17, 'PodDelete', NULL, 'workload:pod:delete', 2, NULL, 3);
INSERT INTO `sys_menu` VALUES (61, 17, 'PodTerm', NULL, 'workload:pod:term', 2, NULL, 4);
INSERT INTO `sys_menu` VALUES (62, 17, 'PodLog', NULL, 'workload:pod:log', 2, NULL, 5);
INSERT INTO `sys_menu` VALUES (63, 12, 'DeploymentCreate', NULL, 'workload:deployment:create', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (64, 12, 'DeploymentList', NULL, 'workload:deployment:list', 2, NULL, 1);
INSERT INTO `sys_menu` VALUES (65, 12, 'DeploymentDetail', NULL, 'workload:deployment:get', 2, NULL, 2);
INSERT INTO `sys_menu` VALUES (66, 12, 'DeploymentDelete', NULL, 'workload:deployment:delete', 2, NULL, 3);
INSERT INTO `sys_menu` VALUES (67, 13, 'DeploymentConfigCreate', NULL, 'workload:deploymentconfig:create', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (68, 13, 'DeploymentConfigList', '', 'workload:deploymentconfig:list', 2, NULL, 1);
INSERT INTO `sys_menu` VALUES (69, 13, 'DeploymentConfigDetail', NULL, 'workload:deploymentconfig:get', 2, NULL, 2);
INSERT INTO `sys_menu` VALUES (70, 13, 'DeploymentConfigDelete', NULL, 'workload:deploymentconfig:delete', 2, NULL, 3);
INSERT INTO `sys_menu` VALUES (72, 16, 'JobList', NULL, 'workload:job:list', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (73, 16, 'JobDelete', NULL, 'workload:job:delete', 2, NULL, 1);
INSERT INTO `sys_menu` VALUES (74, 17, 'PodUpdate', NULL, 'workload:pod:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (75, 12, 'DeploymentUpdate', NULL, 'workload:deployment:update', 2, NULL, 1);
INSERT INTO `sys_menu` VALUES (76, 13, 'DeploymentConfigUpdate', NULL, 'workload:deploymentconfig:update', 2, NULL, 2);
INSERT INTO `sys_menu` VALUES (78, 18, 'SecretList', NULL, 'workload:secret:list', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (79, 18, 'SecretCreate', NULL, 'workload:secret:create', 2, NULL, 1);
INSERT INTO `sys_menu` VALUES (80, 18, 'SecretDetail', NULL, 'workload:secret:get', 2, NULL, 2);
INSERT INTO `sys_menu` VALUES (81, 18, 'SecretDelete', NULL, 'workload:secret:delete', 2, '', 3);
INSERT INTO `sys_menu` VALUES (82, 0, 'Deploy', 'deploy', 'deploy', 0, 'dashboard', 1);
INSERT INTO `sys_menu` VALUES (83, 82, 'Catalog', 'catalog', 'deploy:catalog', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (84, 82, 'OperatorHub', 'operatorhub', 'deploy:operatorhub', 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (87, 82, 'Installed Operators', 'operator', 'deploy:operator', 1, NULL, 4);
INSERT INTO `sys_menu` VALUES (88, 82, 'Custom', 'custom', 'deploy:custom', 1, NULL, 6);
INSERT INTO `sys_menu` VALUES (89, 82, 'Subscriptions', 'subscription', 'deploy:subscription', 1, NULL, 5);
INSERT INTO `sys_menu` VALUES (91, 5, 'LimitRange', 'limitranges', 'resource:limitrange', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (92, 1, 'Clusters', 'clusters', 'home:cluster', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (93, 1, 'Projects', 'projects', 'home:project', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (94, 0, 'Logging', 'logging', 'logging', 0, 'notes', 9);
INSERT INTO `sys_menu` VALUES (95, 94, 'QueryLog', 'query', 'logging:query', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (96, 9, 'Tenant', 'tenants', 'system:tenant', 1, NULL, 8);
INSERT INTO `sys_menu` VALUES (97, 9, 'Workflow', 'workflows', 'system:workflow', 1, NULL, 9);
INSERT INTO `sys_menu` VALUES (98, 0, 'GitOps', 'gitops', 'gitops', 0, 'track_changes', 7);
INSERT INTO `sys_menu` VALUES (99, 98, 'Repositories', 'repositories', 'gitops:repo', 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (100, 98, 'Clusters', 'clusters', 'gitops:cluster', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (101, 98, 'Applications', 'applications', 'gitops:application', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (102, 9, 'GlobalSettings', 'settings', 'system:setting', 1, NULL, 10);
INSERT INTO `sys_menu` VALUES (103, 2, 'CronJobs', 'cronjobs', 'workload:cronjob', 1, NULL, 4);
INSERT INTO `sys_menu` VALUES (104, 82, 'HelmHub', 'helmhub', 'deploy:helmhub', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (106, 82, 'InstalledCharts', 'helmcharts', 'deploy:helmchart', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (107, 16, 'JobCreate', NULL, 'workload:job:create', 2, NULL, 2);
INSERT INTO `sys_menu` VALUES (108, 16, 'JobGet', NULL, 'workload:job:get', 2, NULL, 3);
INSERT INTO `sys_menu` VALUES (109, 16, 'JobUpdate', NULL, 'workload:job:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (111, 18, 'SecretUpdate', NULL, 'workload:secret:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (112, 14, 'StatefulSetList', NULL, 'workload:statefulset:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (113, 14, 'StatefulSetCreate', NULL, 'workload:statefulset:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (114, 14, 'StatefulSetGet', NULL, 'workload:statefulset:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (115, 14, 'StatefulSetUpdate', NULL, 'workload:statefulset:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (116, 14, 'StatefulSetDelete', NULL, 'workload:statefulset:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (117, 15, 'DaemonSetList', NULL, 'workload:daemonset:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (118, 15, 'DaemonSetCreate', NULL, 'workload:daemonset:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (119, 15, 'DaemonSetGet', NULL, 'workload:daemonset:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (120, 15, 'DaemonSetUpdate', NULL, 'workload:daemonset:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (121, 15, 'DaemonSetDelete', NULL, 'workload:daemonset:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (122, 103, 'CronJobList', NULL, 'workload:cronjob:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (123, 103, 'CronJobCreate', NULL, 'workload:cronjob:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (124, 103, 'CronJobGet', NULL, 'workload:cronjob:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (125, 103, 'CronJobUpdate', NULL, 'workload:cronjob:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (126, 103, 'CronJobDelete', NULL, 'workload:cronjob:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (127, 19, 'ConfigmapList', NULL, 'workload:configmap:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (128, 19, 'ConfigmapCreate', NULL, 'workload:configmap:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (129, 19, 'ConfigmapGet', NULL, 'workload:configmap:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (130, 19, 'ConfigmapUpdate', NULL, 'workload:configmap:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (131, 19, 'ConfigmapDelete', NULL, 'workload:configmap:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (132, 20, 'ReplicaSetList', NULL, 'workload:replicaset:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (133, 20, 'ReplicaSetCreate', NULL, 'workload:replicaset:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (134, 20, 'ReplicaSetGet', NULL, 'workload:replicaset:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (135, 20, 'ReplicaSetUpdate', NULL, 'workload:replicaset:update', 2, '', NULL);
INSERT INTO `sys_menu` VALUES (136, 20, 'ReplicaSetDelete', NULL, 'workload:replicaset:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (137, 21, 'ReplicaControllerList', NULL, 'workload:replicacontroller:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (138, 21, 'ReplicaControllerCreate', NULL, 'workload:replicacontroller:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (139, 21, 'ReplicaControllerGet', NULL, 'workload:replicacontroller:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (140, 21, 'ReplicaControllerUpdate', NULL, 'workload:replicacontroller:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (141, 21, 'ReplicaControllerDelete', NULL, 'workload:replicacontroller:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (142, 22, 'HPA:List', NULL, 'workload:hpa:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (143, 22, 'HPA:Create', NULL, 'workload:hpa:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (144, 22, 'HPA:Get', NULL, 'workload:hpa:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (145, 22, 'HPA:Update', NULL, 'workload:hpa:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (146, 22, 'HPA:Delete', NULL, 'workload:hpa:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (147, 23, 'Endpoint:list', NULL, 'network:endpoint:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (148, 23, 'Endpoint:Create', NULL, 'network:endpoint:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (149, 23, 'Endpoint:Get', NULL, 'network:endpoint:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (150, 23, 'Endpoint:Update', NULL, 'network:endpoint:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (151, 23, 'Endpoint:Delete', NULL, 'network:endpoint:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (152, 24, 'Service:List', NULL, 'network:service:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (153, 24, 'Service:Create', NULL, 'network:service:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (154, 24, 'Service:Get', NULL, 'network:service:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (155, 24, 'Service:Update', NULL, 'network:service:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (156, 24, 'Service:Delete', NULL, 'network:service:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (157, 25, 'Route:List', NULL, 'network:route:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (158, 25, 'Route:Create', NULL, 'network:route:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (159, 25, 'Route:Get', NULL, 'network:route:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (160, 25, 'Route:Update', NULL, 'network:route:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (161, 25, 'Route:Delete', NULL, 'network:route:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (162, 26, 'NetworkPolicy:List', '', 'network:networkpolicy:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (163, 26, 'NetworkPolicy:Create', NULL, 'network:networkpolicy:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (164, 26, 'NetworkPolicy:Get', NULL, 'network:networkpolicy:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (165, 26, 'NetworkPolicy:Update', NULL, 'network:networkpolicy:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (166, 26, 'NetworkPolicy:Delete', NULL, 'network:networkpolicy:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (167, 27, 'Ingress:List', NULL, 'network:ingress:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (168, 27, 'Ingress:Create', NULL, 'network:ingress:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (169, 27, 'Ingress:Get', NULL, 'network:ingress:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (170, 27, 'Ingress:Update', NULL, 'network:ingress:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (171, 27, 'Ingress:Delete', NULL, 'network:ingress:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (173, 28, 'PVC:List', NULL, 'storage:persistentvolumeclaim:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (174, 28, 'PVC:Create', NULL, 'storage:persistentvolumeclaim:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (175, 28, 'PVC:Get', NULL, 'storage:persistentvolumeclaim:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (176, 28, 'PVC:Update', NULL, 'storage:persistentvolumeclaim:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (177, 28, 'PVC:Delete', NULL, 'storage:persistentvolumeclaim:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (178, 29, 'PV:List', NULL, 'storage:persistentvolume:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (179, 29, 'PV:Create', NULL, 'storage:persistentvolume:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (180, 29, 'PV:Get', NULL, 'storage:persistentvolume:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (181, 29, 'PV:Update', NULL, 'storage:persistentvolume:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (182, 29, 'PV:Delete', NULL, 'storage:persistentvolume:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (183, 30, 'StorageClass:List', NULL, 'storage:storageclass:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (184, 30, 'StorageClass:Create', NULL, 'storage:storageclass:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (185, 30, 'StorageClass:Get', NULL, 'storage:storageclass:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (186, 30, 'StorageClass:Update', NULL, 'storage:storageclass:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (187, 30, 'StorageClass:Delete', NULL, 'storage:storageclass:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (189, 91, 'LimitRange:List', NULL, 'resource:limitrange:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (190, 91, 'LimitRange:Create', NULL, 'resource:limitrange:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (191, 91, 'LimitRange:Get', NULL, 'resource:limitrange:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (192, 91, 'LimitRange:Update', NULL, 'resource:limitrange:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (193, 91, 'LimitRange:Delete', NULL, 'resource:limitrange:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (194, 31, 'Quota:List', NULL, 'resource:quota:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (195, 31, 'Quota:Create', NULL, 'resource:quota:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (196, 31, 'Quota:Get', NULL, 'resource:quota:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (197, 31, 'Quota:Update', NULL, 'resource:quota:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (198, 31, 'Quota:Delete', NULL, 'resource:quota:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (199, 32, 'ServiceAccount:List', NULL, 'resource:serviceaccount:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (200, 32, 'ServiceAccount:Create', NULL, 'resource:serviceaccount:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (201, 32, 'ServiceAccount:Get', NULL, 'resource:serviceaccount:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (202, 32, 'ServiceAccount:Update', NULL, 'resource:serviceaccount:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (203, 32, 'ServiceAccount:Delete', NULL, 'resource:serviceaccount:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (204, 33, 'BuildConfig:List', NULL, 'devops:buildconfig:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (205, 33, 'BuildConfig:Create', NULL, 'devops:buildconfig:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (206, 33, 'BuildConfig:Get', NULL, 'devops:buildconfig:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (207, 33, 'BuildConfig:Update', NULL, 'devops:buildconfig:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (208, 33, 'BuildConfig:Delete', NULL, 'devops:buildconfig:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (209, 34, 'Pipeline:List', NULL, 'devops:pipeline:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (210, 34, 'Pipeline:Create', NULL, 'devops:pipeline:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (211, 34, 'Pipeline:Get', NULL, 'devops:pipeline:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (212, 34, 'Pipeline:Update', NULL, 'devops:pipeline:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (213, 34, 'Pipeline:Delete', NULL, 'devops:pipeline:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (214, 35, 'Build:List', NULL, 'devops:build:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (215, 35, 'Build:Create', NULL, 'devops:build:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (216, 35, 'Build:Get', NULL, 'devops:build:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (217, 35, 'Build:Update', NULL, 'devops:build:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (218, 35, 'Build:Delete', NULL, 'devops:build:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (219, 36, 'ImageStream:List', NULL, 'devops:imagestream:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (220, 36, 'ImageStream:Create', NULL, 'devops:imagestream:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (221, 36, 'ImageStream:Get', NULL, 'devops:imagestream:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (222, 36, 'ImageStream:Update', NULL, 'devops:imagestream:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (223, 36, 'ImageStream:Delete', NULL, 'devops:imagestream:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (225, 99, 'Repository:List', NULL, 'gitops:repository:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (226, 99, 'Repository:Create', NULL, 'gitops:repository:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (227, 99, 'Repository:Get', NULL, 'gitops:repository:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (228, 99, 'Repository:Update', NULL, 'gitops:repository:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (229, 99, 'Repository:Delete', NULL, 'gitops:repository:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (230, 100, 'Cluster:List', NULL, 'gitops:cluster:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (231, 100, 'Cluster:Create', NULL, 'gitops:cluster:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (232, 100, 'Cluster:Get', NULL, 'gitops:cluster:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (233, 100, 'Cluster:Update', NULL, 'gitops:cluster:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (234, 100, 'Cluster:Delete', NULL, 'gitops:cluster:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (235, 101, 'Application:List', NULL, 'gitops:application:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (236, 101, 'Application:Create', NULL, 'gitops:application:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (237, 101, 'Application:Get', NULL, 'gitops:application:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (238, 101, 'Application:update', NULL, 'gitops:application:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (239, 101, 'Application:Delete', NULL, 'gitops:application:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (240, 37, 'Dashboard:List', NULL, 'servicemesh:dashboard:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (241, 37, 'Dashboard:Create', NULL, 'servicemesh:dashboard:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (242, 37, 'Dashboard:Get', NULL, 'servicemesh:dashboard:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (243, 37, 'Dashboard:Update', NULL, 'servicemesh:dashboard:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (244, 37, 'Dashboard:Delete', NULL, 'servicemesh:dashboard:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (245, 38, 'Service:List', '', 'servicemesh:service:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (246, 38, 'Service:Create', NULL, 'servicemesh:service:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (247, 38, 'Service:Get', NULL, 'servicemesh:service:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (248, 38, 'Service:Update', NULL, 'servicemesh:service:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (249, 38, 'Service:Delete', NULL, 'servicemesh:service:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (250, 39, 'Topology:List', NULL, 'servicemesh:topology:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (251, 39, 'Topology:Create', NULL, 'servicemesh:topology:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (252, 39, 'Topology:Get', NULL, 'servicemesh:topology:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (253, 39, 'Topology:Update', NULL, 'servicemesh:topology:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (254, 39, 'Topology:delete', NULL, 'servicemesh:topology:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (255, 40, 'Tracking:List', NULL, 'servicemesh:tracking:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (256, 47, 'Namespace:List', NULL, 'system:namespace:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (257, 47, 'Namespace:Create', NULL, 'system:namespace:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (258, 47, 'Namespace:Get', NULL, 'system:namespace:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (259, 47, 'Namespace:Update', NULL, 'system:namespace:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (260, 47, 'Namespace:Delete', NULL, 'system:namespace:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (261, 48, 'Node:List', NULL, 'system:node:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (262, 48, 'Node:Create', NULL, 'system:node:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (263, 48, 'Node:Get', NULL, 'system:node:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (264, 48, 'Node:Update', NULL, 'system:node:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (265, 48, 'Node:Delete', NULL, 'system:node:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (266, 49, 'Role:List', NULL, 'system:role:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (267, 49, 'Role:Create', NULL, 'system:role:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (268, 49, 'Role:Get', NULL, 'system:role:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (269, 49, 'Role:Update', NULL, 'system:role:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (270, 49, 'Role:Delete', NULL, 'system:role:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (271, 50, 'Rolebinding:List', NULL, 'system:rolebinding:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (272, 50, 'Rolebinding:Create', NULL, 'system:rolebinding:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (273, 50, 'Rolebinding:Get', NULL, 'system:rolebinding:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (274, 50, 'Rolebinding:Update', NULL, 'system:rolebinding:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (275, 50, 'Rolebinding:Delete', '', 'system:rolebinding:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (276, 51, 'CRD:List', NULL, 'system:customresourcedefinition:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (277, 51, 'CRD:Create', NULL, 'system:customresourcedefinition:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (278, 51, 'CRD:Get', NULL, 'system:customresourcedefinition:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (279, 51, 'CRD:Update', NULL, 'system:customresourcedefinition:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (280, 51, 'CRD:Delete', NULL, 'system:customresourcedefinition:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (281, 53, 'Cluster:List', NULL, 'system:cluster:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (282, 53, 'Cluster:Create', NULL, 'system:cluster:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (283, 53, 'Cluster:Get', NULL, 'system:cluster:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (284, 53, 'Cluster:Update', NULL, 'system:cluster:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (285, 53, 'Cluster:Delete', NULL, 'system:cluster:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (286, 54, 'User:List', NULL, 'system:user:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (287, 54, 'User:Create', NULL, 'system:user:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (288, 54, 'User:Get', NULL, 'system:user:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (289, 54, 'User:Update', NULL, 'system:user:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (290, 54, 'User:Delete', NULL, 'system:user:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (291, 55, 'UserRole:List', NULL, 'system:userrole:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (292, 55, 'UserRole:Create', NULL, 'system:userrole:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (293, 55, 'UserRole:Get', NULL, 'system:userrole:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (294, 55, 'UserRole:Update', NULL, 'system:userrole:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (295, 55, 'UserRole:Delete', NULL, 'system:userrole:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (296, 96, 'Tenant:List', NULL, 'system:tenant:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (297, 96, 'Tenant:Create', NULL, 'system:tenant:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (298, 96, 'Tenant:Get', NULL, 'system:tenant:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (299, 96, 'Tenant:Update', NULL, 'system:tenant:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (300, 96, 'Tenant:Delete', NULL, 'system:tenant:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (301, 97, 'Workflow:List', NULL, 'system:workflow:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (302, 97, 'Workflow:Create', NULL, 'system:workflow:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (303, 97, 'Workflow:Get', NULL, 'system:workflow:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (304, 97, 'Workflow:Update', NULL, 'system:workflow:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (305, 97, 'Workflow:Delete', NULL, 'system:workflow:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (306, 102, 'Setting:List', NULL, 'system:setting:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (307, 102, 'Setting:Create', NULL, 'system:setting:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (308, 102, 'Setting:Get', NULL, 'system:setting:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (309, 102, 'Setting:Update', NULL, 'system:setting:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (310, 102, 'Setting:Delete', NULL, 'system:setting:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (311, 83, 'Catalog:List', NULL, 'deploy:catalog:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (312, 83, 'Catalog:Create', NULL, 'deploy:catalog:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (313, 83, 'Catalog:Get', NULL, 'deploy:catalog:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (314, 83, 'Catalog:Update', NULL, 'deploy:catalog:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (315, 83, 'Catalog:Delete', NULL, 'deploy:catalog:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (316, 84, 'OperatorHub:List', NULL, 'deploy:operatorhub:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (317, 84, 'OperatorHub:Create', NULL, 'deploy:operatorhub:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (318, 84, 'OperatorHub:Get', NULL, 'deploy:operatorhub:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (319, 84, 'OperatorHub:Update', NULL, 'deploy:operatorhub:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (320, 84, 'OperatorHub:Delete', NULL, 'deploy:operatorhub:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (321, 87, 'Operator:List', NULL, 'deploy:operator:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (322, 87, 'Operator:Create', NULL, 'deploy:operator:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (323, 87, 'Operator:Get', NULL, 'deploy:operator:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (324, 87, 'Operator:Update', NULL, 'deploy:operator:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (325, 87, 'Operator:Delete', NULL, 'deploy:operator:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (326, 88, 'Custom:List', NULL, 'deploy:custom:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (327, 88, 'Custom:Create', NULL, 'deploy:custom:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (328, 88, 'Custom:Get', NULL, 'deploy:custom:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (329, 88, 'Custom:Update', NULL, 'deploy:custom:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (330, 88, 'Custom:Delete', NULL, 'deploy:custom:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (332, 93, 'Project:List', NULL, 'home:project:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (333, 93, 'Project:Create', NULL, 'home:project:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (334, 93, 'Project:Get', NULL, 'home:project:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (335, 93, 'Project:Update', NULL, 'home:project:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (336, 93, 'Project:Delete', NULL, 'home:project:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (338, 104, 'Helmhub:Create', NULL, 'deploy:helmhub:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (339, 106, 'Helmchart:Create', NULL, 'deploy:helmchart:create', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (340, 106, 'Helmchart:List', '', 'deploy:helmchart:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (341, 106, 'Helmchart:get', NULL, 'deploy:helmchart:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (342, 106, 'Helmchart:update', NULL, 'deploy:helmchart:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (343, 106, 'Helmchart:delete', NULL, 'deploy:helmchart:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (344, 89, 'subscription:update', NULL, 'deploy:subscription:update', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (345, 89, 'subscription:delete', NULL, 'deploy:subscription:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (346, 89, 'subscription:get', NULL, 'deploy:subscription:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (348, 94, 'Audit', 'audit', 'logging:audit', 1, NULL, NULL);
INSERT INTO `sys_menu` VALUES (349, 348, 'Audit:List', NULL, 'logging:audit:list', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (350, 348, 'Audit:get', NULL, 'logging:audit:get', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (356, 348, 'Audit:delete', NULL, 'logging:audit:delete', 2, NULL, NULL);
INSERT INTO `sys_menu` VALUES (358, 89, 'subscription:list', NULL, 'deploy:subscription:list', 2, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `cluster_role` varchar(500) DEFAULT NULL COMMENT '集群角色',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, 'cluster-admin', 'cluster admin role', 1, '2020-05-24 13:18:36', 'cluster-admin');
INSERT INTO `sys_role` VALUES (2, 'project-admin', 'project admin role', 1, '2020-08-13 15:08:24', 'admin');
INSERT INTO `sys_role` VALUES (3, 'view', 'view role', 1, '2020-08-24 17:46:59', 'view');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4642 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (87, 7, 1);
INSERT INTO `sys_role_menu` VALUES (88, 7, 10);
INSERT INTO `sys_role_menu` VALUES (89, 7, 92);
INSERT INTO `sys_role_menu` VALUES (90, 7, 93);
INSERT INTO `sys_role_menu` VALUES (91, 7, 11);
INSERT INTO `sys_role_menu` VALUES (92, 7, 2);
INSERT INTO `sys_role_menu` VALUES (93, 7, 12);
INSERT INTO `sys_role_menu` VALUES (94, 7, 63);
INSERT INTO `sys_role_menu` VALUES (95, 7, 64);
INSERT INTO `sys_role_menu` VALUES (96, 7, 75);
INSERT INTO `sys_role_menu` VALUES (97, 7, 65);
INSERT INTO `sys_role_menu` VALUES (98, 7, 66);
INSERT INTO `sys_role_menu` VALUES (99, 7, 13);
INSERT INTO `sys_role_menu` VALUES (100, 7, 67);
INSERT INTO `sys_role_menu` VALUES (101, 7, 68);
INSERT INTO `sys_role_menu` VALUES (102, 7, 69);
INSERT INTO `sys_role_menu` VALUES (103, 7, 76);
INSERT INTO `sys_role_menu` VALUES (104, 7, 70);
INSERT INTO `sys_role_menu` VALUES (105, 7, 14);
INSERT INTO `sys_role_menu` VALUES (106, 7, 15);
INSERT INTO `sys_role_menu` VALUES (107, 7, 16);
INSERT INTO `sys_role_menu` VALUES (108, 7, 72);
INSERT INTO `sys_role_menu` VALUES (109, 7, 73);
INSERT INTO `sys_role_menu` VALUES (110, 7, 17);
INSERT INTO `sys_role_menu` VALUES (111, 7, 57);
INSERT INTO `sys_role_menu` VALUES (112, 7, 74);
INSERT INTO `sys_role_menu` VALUES (113, 7, 58);
INSERT INTO `sys_role_menu` VALUES (114, 7, 59);
INSERT INTO `sys_role_menu` VALUES (115, 7, 60);
INSERT INTO `sys_role_menu` VALUES (116, 7, 61);
INSERT INTO `sys_role_menu` VALUES (117, 7, 62);
INSERT INTO `sys_role_menu` VALUES (118, 7, 18);
INSERT INTO `sys_role_menu` VALUES (119, 7, 78);
INSERT INTO `sys_role_menu` VALUES (120, 7, 79);
INSERT INTO `sys_role_menu` VALUES (121, 7, 80);
INSERT INTO `sys_role_menu` VALUES (122, 7, 81);
INSERT INTO `sys_role_menu` VALUES (123, 7, 19);
INSERT INTO `sys_role_menu` VALUES (124, 7, 20);
INSERT INTO `sys_role_menu` VALUES (125, 7, 21);
INSERT INTO `sys_role_menu` VALUES (126, 7, 22);
INSERT INTO `sys_role_menu` VALUES (3884, 2, 1);
INSERT INTO `sys_role_menu` VALUES (3885, 2, 10);
INSERT INTO `sys_role_menu` VALUES (3886, 2, 92);
INSERT INTO `sys_role_menu` VALUES (3887, 2, 93);
INSERT INTO `sys_role_menu` VALUES (3888, 2, 332);
INSERT INTO `sys_role_menu` VALUES (3889, 2, 334);
INSERT INTO `sys_role_menu` VALUES (3890, 2, 335);
INSERT INTO `sys_role_menu` VALUES (3891, 2, 11);
INSERT INTO `sys_role_menu` VALUES (3892, 2, 82);
INSERT INTO `sys_role_menu` VALUES (3893, 2, 83);
INSERT INTO `sys_role_menu` VALUES (3894, 2, 311);
INSERT INTO `sys_role_menu` VALUES (3895, 2, 312);
INSERT INTO `sys_role_menu` VALUES (3896, 2, 313);
INSERT INTO `sys_role_menu` VALUES (3897, 2, 314);
INSERT INTO `sys_role_menu` VALUES (3898, 2, 315);
INSERT INTO `sys_role_menu` VALUES (3899, 2, 104);
INSERT INTO `sys_role_menu` VALUES (3900, 2, 338);
INSERT INTO `sys_role_menu` VALUES (3901, 2, 106);
INSERT INTO `sys_role_menu` VALUES (3902, 2, 340);
INSERT INTO `sys_role_menu` VALUES (3903, 2, 341);
INSERT INTO `sys_role_menu` VALUES (3904, 2, 84);
INSERT INTO `sys_role_menu` VALUES (3905, 2, 316);
INSERT INTO `sys_role_menu` VALUES (3906, 2, 317);
INSERT INTO `sys_role_menu` VALUES (3907, 2, 318);
INSERT INTO `sys_role_menu` VALUES (3908, 2, 319);
INSERT INTO `sys_role_menu` VALUES (3909, 2, 320);
INSERT INTO `sys_role_menu` VALUES (3910, 2, 87);
INSERT INTO `sys_role_menu` VALUES (3911, 2, 321);
INSERT INTO `sys_role_menu` VALUES (3912, 2, 322);
INSERT INTO `sys_role_menu` VALUES (3913, 2, 323);
INSERT INTO `sys_role_menu` VALUES (3914, 2, 324);
INSERT INTO `sys_role_menu` VALUES (3915, 2, 325);
INSERT INTO `sys_role_menu` VALUES (3916, 2, 89);
INSERT INTO `sys_role_menu` VALUES (3917, 2, 346);
INSERT INTO `sys_role_menu` VALUES (3918, 2, 2);
INSERT INTO `sys_role_menu` VALUES (3919, 2, 12);
INSERT INTO `sys_role_menu` VALUES (3920, 2, 63);
INSERT INTO `sys_role_menu` VALUES (3921, 2, 64);
INSERT INTO `sys_role_menu` VALUES (3922, 2, 75);
INSERT INTO `sys_role_menu` VALUES (3923, 2, 65);
INSERT INTO `sys_role_menu` VALUES (3924, 2, 66);
INSERT INTO `sys_role_menu` VALUES (3925, 2, 13);
INSERT INTO `sys_role_menu` VALUES (3926, 2, 67);
INSERT INTO `sys_role_menu` VALUES (3927, 2, 68);
INSERT INTO `sys_role_menu` VALUES (3928, 2, 69);
INSERT INTO `sys_role_menu` VALUES (3929, 2, 76);
INSERT INTO `sys_role_menu` VALUES (3930, 2, 70);
INSERT INTO `sys_role_menu` VALUES (3931, 2, 14);
INSERT INTO `sys_role_menu` VALUES (3932, 2, 112);
INSERT INTO `sys_role_menu` VALUES (3933, 2, 113);
INSERT INTO `sys_role_menu` VALUES (3934, 2, 114);
INSERT INTO `sys_role_menu` VALUES (3935, 2, 115);
INSERT INTO `sys_role_menu` VALUES (3936, 2, 116);
INSERT INTO `sys_role_menu` VALUES (3937, 2, 15);
INSERT INTO `sys_role_menu` VALUES (3938, 2, 117);
INSERT INTO `sys_role_menu` VALUES (3939, 2, 118);
INSERT INTO `sys_role_menu` VALUES (3940, 2, 119);
INSERT INTO `sys_role_menu` VALUES (3941, 2, 120);
INSERT INTO `sys_role_menu` VALUES (3942, 2, 121);
INSERT INTO `sys_role_menu` VALUES (3943, 2, 103);
INSERT INTO `sys_role_menu` VALUES (3944, 2, 122);
INSERT INTO `sys_role_menu` VALUES (3945, 2, 123);
INSERT INTO `sys_role_menu` VALUES (3946, 2, 124);
INSERT INTO `sys_role_menu` VALUES (3947, 2, 125);
INSERT INTO `sys_role_menu` VALUES (3948, 2, 126);
INSERT INTO `sys_role_menu` VALUES (3949, 2, 16);
INSERT INTO `sys_role_menu` VALUES (3950, 2, 109);
INSERT INTO `sys_role_menu` VALUES (3951, 2, 72);
INSERT INTO `sys_role_menu` VALUES (3952, 2, 73);
INSERT INTO `sys_role_menu` VALUES (3953, 2, 107);
INSERT INTO `sys_role_menu` VALUES (3954, 2, 108);
INSERT INTO `sys_role_menu` VALUES (3955, 2, 17);
INSERT INTO `sys_role_menu` VALUES (3956, 2, 57);
INSERT INTO `sys_role_menu` VALUES (3957, 2, 74);
INSERT INTO `sys_role_menu` VALUES (3958, 2, 58);
INSERT INTO `sys_role_menu` VALUES (3959, 2, 59);
INSERT INTO `sys_role_menu` VALUES (3960, 2, 60);
INSERT INTO `sys_role_menu` VALUES (3961, 2, 61);
INSERT INTO `sys_role_menu` VALUES (3962, 2, 62);
INSERT INTO `sys_role_menu` VALUES (3963, 2, 18);
INSERT INTO `sys_role_menu` VALUES (3964, 2, 111);
INSERT INTO `sys_role_menu` VALUES (3965, 2, 78);
INSERT INTO `sys_role_menu` VALUES (3966, 2, 79);
INSERT INTO `sys_role_menu` VALUES (3967, 2, 80);
INSERT INTO `sys_role_menu` VALUES (3968, 2, 81);
INSERT INTO `sys_role_menu` VALUES (3969, 2, 19);
INSERT INTO `sys_role_menu` VALUES (3970, 2, 127);
INSERT INTO `sys_role_menu` VALUES (3971, 2, 128);
INSERT INTO `sys_role_menu` VALUES (3972, 2, 129);
INSERT INTO `sys_role_menu` VALUES (3973, 2, 130);
INSERT INTO `sys_role_menu` VALUES (3974, 2, 131);
INSERT INTO `sys_role_menu` VALUES (3975, 2, 20);
INSERT INTO `sys_role_menu` VALUES (3976, 2, 132);
INSERT INTO `sys_role_menu` VALUES (3977, 2, 133);
INSERT INTO `sys_role_menu` VALUES (3978, 2, 134);
INSERT INTO `sys_role_menu` VALUES (3979, 2, 135);
INSERT INTO `sys_role_menu` VALUES (3980, 2, 136);
INSERT INTO `sys_role_menu` VALUES (3981, 2, 21);
INSERT INTO `sys_role_menu` VALUES (3982, 2, 137);
INSERT INTO `sys_role_menu` VALUES (3983, 2, 138);
INSERT INTO `sys_role_menu` VALUES (3984, 2, 139);
INSERT INTO `sys_role_menu` VALUES (3985, 2, 140);
INSERT INTO `sys_role_menu` VALUES (3986, 2, 141);
INSERT INTO `sys_role_menu` VALUES (3987, 2, 22);
INSERT INTO `sys_role_menu` VALUES (3988, 2, 142);
INSERT INTO `sys_role_menu` VALUES (3989, 2, 143);
INSERT INTO `sys_role_menu` VALUES (3990, 2, 144);
INSERT INTO `sys_role_menu` VALUES (3991, 2, 145);
INSERT INTO `sys_role_menu` VALUES (3992, 2, 146);
INSERT INTO `sys_role_menu` VALUES (3993, 2, 3);
INSERT INTO `sys_role_menu` VALUES (3994, 2, 23);
INSERT INTO `sys_role_menu` VALUES (3995, 2, 147);
INSERT INTO `sys_role_menu` VALUES (3996, 2, 148);
INSERT INTO `sys_role_menu` VALUES (3997, 2, 149);
INSERT INTO `sys_role_menu` VALUES (3998, 2, 150);
INSERT INTO `sys_role_menu` VALUES (3999, 2, 151);
INSERT INTO `sys_role_menu` VALUES (4000, 2, 24);
INSERT INTO `sys_role_menu` VALUES (4001, 2, 152);
INSERT INTO `sys_role_menu` VALUES (4002, 2, 153);
INSERT INTO `sys_role_menu` VALUES (4003, 2, 154);
INSERT INTO `sys_role_menu` VALUES (4004, 2, 155);
INSERT INTO `sys_role_menu` VALUES (4005, 2, 156);
INSERT INTO `sys_role_menu` VALUES (4006, 2, 25);
INSERT INTO `sys_role_menu` VALUES (4007, 2, 157);
INSERT INTO `sys_role_menu` VALUES (4008, 2, 158);
INSERT INTO `sys_role_menu` VALUES (4009, 2, 159);
INSERT INTO `sys_role_menu` VALUES (4010, 2, 160);
INSERT INTO `sys_role_menu` VALUES (4011, 2, 161);
INSERT INTO `sys_role_menu` VALUES (4012, 2, 26);
INSERT INTO `sys_role_menu` VALUES (4013, 2, 162);
INSERT INTO `sys_role_menu` VALUES (4014, 2, 163);
INSERT INTO `sys_role_menu` VALUES (4015, 2, 164);
INSERT INTO `sys_role_menu` VALUES (4016, 2, 165);
INSERT INTO `sys_role_menu` VALUES (4017, 2, 166);
INSERT INTO `sys_role_menu` VALUES (4018, 2, 27);
INSERT INTO `sys_role_menu` VALUES (4019, 2, 167);
INSERT INTO `sys_role_menu` VALUES (4020, 2, 168);
INSERT INTO `sys_role_menu` VALUES (4021, 2, 169);
INSERT INTO `sys_role_menu` VALUES (4022, 2, 170);
INSERT INTO `sys_role_menu` VALUES (4023, 2, 171);
INSERT INTO `sys_role_menu` VALUES (4024, 2, 4);
INSERT INTO `sys_role_menu` VALUES (4025, 2, 28);
INSERT INTO `sys_role_menu` VALUES (4026, 2, 173);
INSERT INTO `sys_role_menu` VALUES (4027, 2, 174);
INSERT INTO `sys_role_menu` VALUES (4028, 2, 175);
INSERT INTO `sys_role_menu` VALUES (4029, 2, 176);
INSERT INTO `sys_role_menu` VALUES (4030, 2, 177);
INSERT INTO `sys_role_menu` VALUES (4031, 2, 29);
INSERT INTO `sys_role_menu` VALUES (4032, 2, 178);
INSERT INTO `sys_role_menu` VALUES (4033, 2, 180);
INSERT INTO `sys_role_menu` VALUES (4034, 2, 30);
INSERT INTO `sys_role_menu` VALUES (4035, 2, 183);
INSERT INTO `sys_role_menu` VALUES (4036, 2, 5);
INSERT INTO `sys_role_menu` VALUES (4037, 2, 31);
INSERT INTO `sys_role_menu` VALUES (4038, 2, 194);
INSERT INTO `sys_role_menu` VALUES (4039, 2, 196);
INSERT INTO `sys_role_menu` VALUES (4040, 2, 91);
INSERT INTO `sys_role_menu` VALUES (4041, 2, 189);
INSERT INTO `sys_role_menu` VALUES (4042, 2, 191);
INSERT INTO `sys_role_menu` VALUES (4043, 2, 32);
INSERT INTO `sys_role_menu` VALUES (4044, 2, 199);
INSERT INTO `sys_role_menu` VALUES (4045, 2, 200);
INSERT INTO `sys_role_menu` VALUES (4046, 2, 201);
INSERT INTO `sys_role_menu` VALUES (4047, 2, 202);
INSERT INTO `sys_role_menu` VALUES (4048, 2, 203);
INSERT INTO `sys_role_menu` VALUES (4049, 2, 6);
INSERT INTO `sys_role_menu` VALUES (4050, 2, 33);
INSERT INTO `sys_role_menu` VALUES (4051, 2, 204);
INSERT INTO `sys_role_menu` VALUES (4052, 2, 205);
INSERT INTO `sys_role_menu` VALUES (4053, 2, 206);
INSERT INTO `sys_role_menu` VALUES (4054, 2, 207);
INSERT INTO `sys_role_menu` VALUES (4055, 2, 208);
INSERT INTO `sys_role_menu` VALUES (4056, 2, 34);
INSERT INTO `sys_role_menu` VALUES (4057, 2, 209);
INSERT INTO `sys_role_menu` VALUES (4058, 2, 210);
INSERT INTO `sys_role_menu` VALUES (4059, 2, 211);
INSERT INTO `sys_role_menu` VALUES (4060, 2, 212);
INSERT INTO `sys_role_menu` VALUES (4061, 2, 213);
INSERT INTO `sys_role_menu` VALUES (4062, 2, 35);
INSERT INTO `sys_role_menu` VALUES (4063, 2, 214);
INSERT INTO `sys_role_menu` VALUES (4064, 2, 215);
INSERT INTO `sys_role_menu` VALUES (4065, 2, 216);
INSERT INTO `sys_role_menu` VALUES (4066, 2, 217);
INSERT INTO `sys_role_menu` VALUES (4067, 2, 218);
INSERT INTO `sys_role_menu` VALUES (4068, 2, 36);
INSERT INTO `sys_role_menu` VALUES (4069, 2, 219);
INSERT INTO `sys_role_menu` VALUES (4070, 2, 220);
INSERT INTO `sys_role_menu` VALUES (4071, 2, 221);
INSERT INTO `sys_role_menu` VALUES (4072, 2, 222);
INSERT INTO `sys_role_menu` VALUES (4073, 2, 223);
INSERT INTO `sys_role_menu` VALUES (4074, 2, 94);
INSERT INTO `sys_role_menu` VALUES (4075, 2, 95);
INSERT INTO `sys_role_menu` VALUES (4076, 2, 8);
INSERT INTO `sys_role_menu` VALUES (4077, 2, 41);
INSERT INTO `sys_role_menu` VALUES (4078, 2, 42);
INSERT INTO `sys_role_menu` VALUES (4079, 2, 45);
INSERT INTO `sys_role_menu` VALUES (4080, 2, 46);
INSERT INTO `sys_role_menu` VALUES (4194, 1, 1);
INSERT INTO `sys_role_menu` VALUES (4195, 1, 10);
INSERT INTO `sys_role_menu` VALUES (4196, 1, 92);
INSERT INTO `sys_role_menu` VALUES (4197, 1, 93);
INSERT INTO `sys_role_menu` VALUES (4198, 1, 332);
INSERT INTO `sys_role_menu` VALUES (4199, 1, 333);
INSERT INTO `sys_role_menu` VALUES (4200, 1, 334);
INSERT INTO `sys_role_menu` VALUES (4201, 1, 335);
INSERT INTO `sys_role_menu` VALUES (4202, 1, 336);
INSERT INTO `sys_role_menu` VALUES (4203, 1, 11);
INSERT INTO `sys_role_menu` VALUES (4204, 1, 82);
INSERT INTO `sys_role_menu` VALUES (4205, 1, 83);
INSERT INTO `sys_role_menu` VALUES (4206, 1, 311);
INSERT INTO `sys_role_menu` VALUES (4207, 1, 312);
INSERT INTO `sys_role_menu` VALUES (4208, 1, 313);
INSERT INTO `sys_role_menu` VALUES (4209, 1, 314);
INSERT INTO `sys_role_menu` VALUES (4210, 1, 315);
INSERT INTO `sys_role_menu` VALUES (4211, 1, 104);
INSERT INTO `sys_role_menu` VALUES (4212, 1, 338);
INSERT INTO `sys_role_menu` VALUES (4213, 1, 106);
INSERT INTO `sys_role_menu` VALUES (4214, 1, 339);
INSERT INTO `sys_role_menu` VALUES (4215, 1, 340);
INSERT INTO `sys_role_menu` VALUES (4216, 1, 341);
INSERT INTO `sys_role_menu` VALUES (4217, 1, 342);
INSERT INTO `sys_role_menu` VALUES (4218, 1, 343);
INSERT INTO `sys_role_menu` VALUES (4219, 1, 84);
INSERT INTO `sys_role_menu` VALUES (4220, 1, 316);
INSERT INTO `sys_role_menu` VALUES (4221, 1, 317);
INSERT INTO `sys_role_menu` VALUES (4222, 1, 318);
INSERT INTO `sys_role_menu` VALUES (4223, 1, 319);
INSERT INTO `sys_role_menu` VALUES (4224, 1, 320);
INSERT INTO `sys_role_menu` VALUES (4225, 1, 87);
INSERT INTO `sys_role_menu` VALUES (4226, 1, 321);
INSERT INTO `sys_role_menu` VALUES (4227, 1, 322);
INSERT INTO `sys_role_menu` VALUES (4228, 1, 323);
INSERT INTO `sys_role_menu` VALUES (4229, 1, 324);
INSERT INTO `sys_role_menu` VALUES (4230, 1, 325);
INSERT INTO `sys_role_menu` VALUES (4231, 1, 89);
INSERT INTO `sys_role_menu` VALUES (4232, 1, 344);
INSERT INTO `sys_role_menu` VALUES (4233, 1, 345);
INSERT INTO `sys_role_menu` VALUES (4234, 1, 346);
INSERT INTO `sys_role_menu` VALUES (4235, 1, 358);
INSERT INTO `sys_role_menu` VALUES (4236, 1, 88);
INSERT INTO `sys_role_menu` VALUES (4237, 1, 326);
INSERT INTO `sys_role_menu` VALUES (4238, 1, 327);
INSERT INTO `sys_role_menu` VALUES (4239, 1, 328);
INSERT INTO `sys_role_menu` VALUES (4240, 1, 329);
INSERT INTO `sys_role_menu` VALUES (4241, 1, 330);
INSERT INTO `sys_role_menu` VALUES (4242, 1, 2);
INSERT INTO `sys_role_menu` VALUES (4243, 1, 12);
INSERT INTO `sys_role_menu` VALUES (4244, 1, 63);
INSERT INTO `sys_role_menu` VALUES (4245, 1, 64);
INSERT INTO `sys_role_menu` VALUES (4246, 1, 75);
INSERT INTO `sys_role_menu` VALUES (4247, 1, 65);
INSERT INTO `sys_role_menu` VALUES (4248, 1, 66);
INSERT INTO `sys_role_menu` VALUES (4249, 1, 13);
INSERT INTO `sys_role_menu` VALUES (4250, 1, 67);
INSERT INTO `sys_role_menu` VALUES (4251, 1, 68);
INSERT INTO `sys_role_menu` VALUES (4252, 1, 69);
INSERT INTO `sys_role_menu` VALUES (4253, 1, 76);
INSERT INTO `sys_role_menu` VALUES (4254, 1, 70);
INSERT INTO `sys_role_menu` VALUES (4255, 1, 14);
INSERT INTO `sys_role_menu` VALUES (4256, 1, 112);
INSERT INTO `sys_role_menu` VALUES (4257, 1, 113);
INSERT INTO `sys_role_menu` VALUES (4258, 1, 114);
INSERT INTO `sys_role_menu` VALUES (4259, 1, 115);
INSERT INTO `sys_role_menu` VALUES (4260, 1, 116);
INSERT INTO `sys_role_menu` VALUES (4261, 1, 15);
INSERT INTO `sys_role_menu` VALUES (4262, 1, 117);
INSERT INTO `sys_role_menu` VALUES (4263, 1, 118);
INSERT INTO `sys_role_menu` VALUES (4264, 1, 119);
INSERT INTO `sys_role_menu` VALUES (4265, 1, 120);
INSERT INTO `sys_role_menu` VALUES (4266, 1, 121);
INSERT INTO `sys_role_menu` VALUES (4267, 1, 103);
INSERT INTO `sys_role_menu` VALUES (4268, 1, 122);
INSERT INTO `sys_role_menu` VALUES (4269, 1, 123);
INSERT INTO `sys_role_menu` VALUES (4270, 1, 124);
INSERT INTO `sys_role_menu` VALUES (4271, 1, 125);
INSERT INTO `sys_role_menu` VALUES (4272, 1, 126);
INSERT INTO `sys_role_menu` VALUES (4273, 1, 16);
INSERT INTO `sys_role_menu` VALUES (4274, 1, 109);
INSERT INTO `sys_role_menu` VALUES (4275, 1, 72);
INSERT INTO `sys_role_menu` VALUES (4276, 1, 73);
INSERT INTO `sys_role_menu` VALUES (4277, 1, 107);
INSERT INTO `sys_role_menu` VALUES (4278, 1, 108);
INSERT INTO `sys_role_menu` VALUES (4279, 1, 17);
INSERT INTO `sys_role_menu` VALUES (4280, 1, 57);
INSERT INTO `sys_role_menu` VALUES (4281, 1, 74);
INSERT INTO `sys_role_menu` VALUES (4282, 1, 58);
INSERT INTO `sys_role_menu` VALUES (4283, 1, 59);
INSERT INTO `sys_role_menu` VALUES (4284, 1, 60);
INSERT INTO `sys_role_menu` VALUES (4285, 1, 61);
INSERT INTO `sys_role_menu` VALUES (4286, 1, 62);
INSERT INTO `sys_role_menu` VALUES (4287, 1, 18);
INSERT INTO `sys_role_menu` VALUES (4288, 1, 111);
INSERT INTO `sys_role_menu` VALUES (4289, 1, 78);
INSERT INTO `sys_role_menu` VALUES (4290, 1, 79);
INSERT INTO `sys_role_menu` VALUES (4291, 1, 80);
INSERT INTO `sys_role_menu` VALUES (4292, 1, 81);
INSERT INTO `sys_role_menu` VALUES (4293, 1, 19);
INSERT INTO `sys_role_menu` VALUES (4294, 1, 127);
INSERT INTO `sys_role_menu` VALUES (4295, 1, 128);
INSERT INTO `sys_role_menu` VALUES (4296, 1, 129);
INSERT INTO `sys_role_menu` VALUES (4297, 1, 130);
INSERT INTO `sys_role_menu` VALUES (4298, 1, 131);
INSERT INTO `sys_role_menu` VALUES (4299, 1, 20);
INSERT INTO `sys_role_menu` VALUES (4300, 1, 132);
INSERT INTO `sys_role_menu` VALUES (4301, 1, 133);
INSERT INTO `sys_role_menu` VALUES (4302, 1, 134);
INSERT INTO `sys_role_menu` VALUES (4303, 1, 135);
INSERT INTO `sys_role_menu` VALUES (4304, 1, 136);
INSERT INTO `sys_role_menu` VALUES (4305, 1, 21);
INSERT INTO `sys_role_menu` VALUES (4306, 1, 137);
INSERT INTO `sys_role_menu` VALUES (4307, 1, 138);
INSERT INTO `sys_role_menu` VALUES (4308, 1, 139);
INSERT INTO `sys_role_menu` VALUES (4309, 1, 140);
INSERT INTO `sys_role_menu` VALUES (4310, 1, 141);
INSERT INTO `sys_role_menu` VALUES (4311, 1, 22);
INSERT INTO `sys_role_menu` VALUES (4312, 1, 142);
INSERT INTO `sys_role_menu` VALUES (4313, 1, 143);
INSERT INTO `sys_role_menu` VALUES (4314, 1, 144);
INSERT INTO `sys_role_menu` VALUES (4315, 1, 145);
INSERT INTO `sys_role_menu` VALUES (4316, 1, 146);
INSERT INTO `sys_role_menu` VALUES (4317, 1, 3);
INSERT INTO `sys_role_menu` VALUES (4318, 1, 23);
INSERT INTO `sys_role_menu` VALUES (4319, 1, 147);
INSERT INTO `sys_role_menu` VALUES (4320, 1, 148);
INSERT INTO `sys_role_menu` VALUES (4321, 1, 149);
INSERT INTO `sys_role_menu` VALUES (4322, 1, 150);
INSERT INTO `sys_role_menu` VALUES (4323, 1, 151);
INSERT INTO `sys_role_menu` VALUES (4324, 1, 24);
INSERT INTO `sys_role_menu` VALUES (4325, 1, 152);
INSERT INTO `sys_role_menu` VALUES (4326, 1, 153);
INSERT INTO `sys_role_menu` VALUES (4327, 1, 154);
INSERT INTO `sys_role_menu` VALUES (4328, 1, 155);
INSERT INTO `sys_role_menu` VALUES (4329, 1, 156);
INSERT INTO `sys_role_menu` VALUES (4330, 1, 25);
INSERT INTO `sys_role_menu` VALUES (4331, 1, 157);
INSERT INTO `sys_role_menu` VALUES (4332, 1, 158);
INSERT INTO `sys_role_menu` VALUES (4333, 1, 159);
INSERT INTO `sys_role_menu` VALUES (4334, 1, 160);
INSERT INTO `sys_role_menu` VALUES (4335, 1, 161);
INSERT INTO `sys_role_menu` VALUES (4336, 1, 26);
INSERT INTO `sys_role_menu` VALUES (4337, 1, 162);
INSERT INTO `sys_role_menu` VALUES (4338, 1, 163);
INSERT INTO `sys_role_menu` VALUES (4339, 1, 164);
INSERT INTO `sys_role_menu` VALUES (4340, 1, 165);
INSERT INTO `sys_role_menu` VALUES (4341, 1, 166);
INSERT INTO `sys_role_menu` VALUES (4342, 1, 27);
INSERT INTO `sys_role_menu` VALUES (4343, 1, 167);
INSERT INTO `sys_role_menu` VALUES (4344, 1, 168);
INSERT INTO `sys_role_menu` VALUES (4345, 1, 169);
INSERT INTO `sys_role_menu` VALUES (4346, 1, 170);
INSERT INTO `sys_role_menu` VALUES (4347, 1, 171);
INSERT INTO `sys_role_menu` VALUES (4348, 1, 4);
INSERT INTO `sys_role_menu` VALUES (4349, 1, 28);
INSERT INTO `sys_role_menu` VALUES (4350, 1, 173);
INSERT INTO `sys_role_menu` VALUES (4351, 1, 174);
INSERT INTO `sys_role_menu` VALUES (4352, 1, 175);
INSERT INTO `sys_role_menu` VALUES (4353, 1, 176);
INSERT INTO `sys_role_menu` VALUES (4354, 1, 177);
INSERT INTO `sys_role_menu` VALUES (4355, 1, 29);
INSERT INTO `sys_role_menu` VALUES (4356, 1, 178);
INSERT INTO `sys_role_menu` VALUES (4357, 1, 179);
INSERT INTO `sys_role_menu` VALUES (4358, 1, 180);
INSERT INTO `sys_role_menu` VALUES (4359, 1, 181);
INSERT INTO `sys_role_menu` VALUES (4360, 1, 182);
INSERT INTO `sys_role_menu` VALUES (4361, 1, 30);
INSERT INTO `sys_role_menu` VALUES (4362, 1, 183);
INSERT INTO `sys_role_menu` VALUES (4363, 1, 184);
INSERT INTO `sys_role_menu` VALUES (4364, 1, 185);
INSERT INTO `sys_role_menu` VALUES (4365, 1, 186);
INSERT INTO `sys_role_menu` VALUES (4366, 1, 187);
INSERT INTO `sys_role_menu` VALUES (4367, 1, 5);
INSERT INTO `sys_role_menu` VALUES (4368, 1, 31);
INSERT INTO `sys_role_menu` VALUES (4369, 1, 194);
INSERT INTO `sys_role_menu` VALUES (4370, 1, 195);
INSERT INTO `sys_role_menu` VALUES (4371, 1, 196);
INSERT INTO `sys_role_menu` VALUES (4372, 1, 197);
INSERT INTO `sys_role_menu` VALUES (4373, 1, 198);
INSERT INTO `sys_role_menu` VALUES (4374, 1, 91);
INSERT INTO `sys_role_menu` VALUES (4375, 1, 189);
INSERT INTO `sys_role_menu` VALUES (4376, 1, 190);
INSERT INTO `sys_role_menu` VALUES (4377, 1, 191);
INSERT INTO `sys_role_menu` VALUES (4378, 1, 192);
INSERT INTO `sys_role_menu` VALUES (4379, 1, 193);
INSERT INTO `sys_role_menu` VALUES (4380, 1, 32);
INSERT INTO `sys_role_menu` VALUES (4381, 1, 199);
INSERT INTO `sys_role_menu` VALUES (4382, 1, 200);
INSERT INTO `sys_role_menu` VALUES (4383, 1, 201);
INSERT INTO `sys_role_menu` VALUES (4384, 1, 202);
INSERT INTO `sys_role_menu` VALUES (4385, 1, 203);
INSERT INTO `sys_role_menu` VALUES (4386, 1, 6);
INSERT INTO `sys_role_menu` VALUES (4387, 1, 33);
INSERT INTO `sys_role_menu` VALUES (4388, 1, 204);
INSERT INTO `sys_role_menu` VALUES (4389, 1, 205);
INSERT INTO `sys_role_menu` VALUES (4390, 1, 206);
INSERT INTO `sys_role_menu` VALUES (4391, 1, 207);
INSERT INTO `sys_role_menu` VALUES (4392, 1, 208);
INSERT INTO `sys_role_menu` VALUES (4393, 1, 34);
INSERT INTO `sys_role_menu` VALUES (4394, 1, 209);
INSERT INTO `sys_role_menu` VALUES (4395, 1, 210);
INSERT INTO `sys_role_menu` VALUES (4396, 1, 211);
INSERT INTO `sys_role_menu` VALUES (4397, 1, 212);
INSERT INTO `sys_role_menu` VALUES (4398, 1, 213);
INSERT INTO `sys_role_menu` VALUES (4399, 1, 35);
INSERT INTO `sys_role_menu` VALUES (4400, 1, 214);
INSERT INTO `sys_role_menu` VALUES (4401, 1, 215);
INSERT INTO `sys_role_menu` VALUES (4402, 1, 216);
INSERT INTO `sys_role_menu` VALUES (4403, 1, 217);
INSERT INTO `sys_role_menu` VALUES (4404, 1, 218);
INSERT INTO `sys_role_menu` VALUES (4405, 1, 36);
INSERT INTO `sys_role_menu` VALUES (4406, 1, 219);
INSERT INTO `sys_role_menu` VALUES (4407, 1, 220);
INSERT INTO `sys_role_menu` VALUES (4408, 1, 221);
INSERT INTO `sys_role_menu` VALUES (4409, 1, 222);
INSERT INTO `sys_role_menu` VALUES (4410, 1, 223);
INSERT INTO `sys_role_menu` VALUES (4411, 1, 98);
INSERT INTO `sys_role_menu` VALUES (4412, 1, 99);
INSERT INTO `sys_role_menu` VALUES (4413, 1, 225);
INSERT INTO `sys_role_menu` VALUES (4414, 1, 226);
INSERT INTO `sys_role_menu` VALUES (4415, 1, 227);
INSERT INTO `sys_role_menu` VALUES (4416, 1, 228);
INSERT INTO `sys_role_menu` VALUES (4417, 1, 229);
INSERT INTO `sys_role_menu` VALUES (4418, 1, 100);
INSERT INTO `sys_role_menu` VALUES (4419, 1, 230);
INSERT INTO `sys_role_menu` VALUES (4420, 1, 231);
INSERT INTO `sys_role_menu` VALUES (4421, 1, 232);
INSERT INTO `sys_role_menu` VALUES (4422, 1, 233);
INSERT INTO `sys_role_menu` VALUES (4423, 1, 234);
INSERT INTO `sys_role_menu` VALUES (4424, 1, 101);
INSERT INTO `sys_role_menu` VALUES (4425, 1, 235);
INSERT INTO `sys_role_menu` VALUES (4426, 1, 236);
INSERT INTO `sys_role_menu` VALUES (4427, 1, 237);
INSERT INTO `sys_role_menu` VALUES (4428, 1, 238);
INSERT INTO `sys_role_menu` VALUES (4429, 1, 239);
INSERT INTO `sys_role_menu` VALUES (4430, 1, 7);
INSERT INTO `sys_role_menu` VALUES (4431, 1, 37);
INSERT INTO `sys_role_menu` VALUES (4432, 1, 240);
INSERT INTO `sys_role_menu` VALUES (4433, 1, 241);
INSERT INTO `sys_role_menu` VALUES (4434, 1, 242);
INSERT INTO `sys_role_menu` VALUES (4435, 1, 243);
INSERT INTO `sys_role_menu` VALUES (4436, 1, 244);
INSERT INTO `sys_role_menu` VALUES (4437, 1, 38);
INSERT INTO `sys_role_menu` VALUES (4438, 1, 245);
INSERT INTO `sys_role_menu` VALUES (4439, 1, 246);
INSERT INTO `sys_role_menu` VALUES (4440, 1, 247);
INSERT INTO `sys_role_menu` VALUES (4441, 1, 248);
INSERT INTO `sys_role_menu` VALUES (4442, 1, 249);
INSERT INTO `sys_role_menu` VALUES (4443, 1, 39);
INSERT INTO `sys_role_menu` VALUES (4444, 1, 250);
INSERT INTO `sys_role_menu` VALUES (4445, 1, 251);
INSERT INTO `sys_role_menu` VALUES (4446, 1, 252);
INSERT INTO `sys_role_menu` VALUES (4447, 1, 253);
INSERT INTO `sys_role_menu` VALUES (4448, 1, 254);
INSERT INTO `sys_role_menu` VALUES (4449, 1, 40);
INSERT INTO `sys_role_menu` VALUES (4450, 1, 255);
INSERT INTO `sys_role_menu` VALUES (4451, 1, 94);
INSERT INTO `sys_role_menu` VALUES (4452, 1, 348);
INSERT INTO `sys_role_menu` VALUES (4453, 1, 349);
INSERT INTO `sys_role_menu` VALUES (4454, 1, 350);
INSERT INTO `sys_role_menu` VALUES (4455, 1, 95);
INSERT INTO `sys_role_menu` VALUES (4456, 1, 8);
INSERT INTO `sys_role_menu` VALUES (4457, 1, 41);
INSERT INTO `sys_role_menu` VALUES (4458, 1, 42);
INSERT INTO `sys_role_menu` VALUES (4459, 1, 43);
INSERT INTO `sys_role_menu` VALUES (4460, 1, 44);
INSERT INTO `sys_role_menu` VALUES (4461, 1, 45);
INSERT INTO `sys_role_menu` VALUES (4462, 1, 46);
INSERT INTO `sys_role_menu` VALUES (4463, 1, 9);
INSERT INTO `sys_role_menu` VALUES (4464, 1, 47);
INSERT INTO `sys_role_menu` VALUES (4465, 1, 256);
INSERT INTO `sys_role_menu` VALUES (4466, 1, 257);
INSERT INTO `sys_role_menu` VALUES (4467, 1, 258);
INSERT INTO `sys_role_menu` VALUES (4468, 1, 259);
INSERT INTO `sys_role_menu` VALUES (4469, 1, 260);
INSERT INTO `sys_role_menu` VALUES (4470, 1, 48);
INSERT INTO `sys_role_menu` VALUES (4471, 1, 261);
INSERT INTO `sys_role_menu` VALUES (4472, 1, 262);
INSERT INTO `sys_role_menu` VALUES (4473, 1, 263);
INSERT INTO `sys_role_menu` VALUES (4474, 1, 264);
INSERT INTO `sys_role_menu` VALUES (4475, 1, 265);
INSERT INTO `sys_role_menu` VALUES (4476, 1, 49);
INSERT INTO `sys_role_menu` VALUES (4477, 1, 266);
INSERT INTO `sys_role_menu` VALUES (4478, 1, 267);
INSERT INTO `sys_role_menu` VALUES (4479, 1, 268);
INSERT INTO `sys_role_menu` VALUES (4480, 1, 269);
INSERT INTO `sys_role_menu` VALUES (4481, 1, 270);
INSERT INTO `sys_role_menu` VALUES (4482, 1, 50);
INSERT INTO `sys_role_menu` VALUES (4483, 1, 271);
INSERT INTO `sys_role_menu` VALUES (4484, 1, 272);
INSERT INTO `sys_role_menu` VALUES (4485, 1, 273);
INSERT INTO `sys_role_menu` VALUES (4486, 1, 274);
INSERT INTO `sys_role_menu` VALUES (4487, 1, 275);
INSERT INTO `sys_role_menu` VALUES (4488, 1, 51);
INSERT INTO `sys_role_menu` VALUES (4489, 1, 276);
INSERT INTO `sys_role_menu` VALUES (4490, 1, 277);
INSERT INTO `sys_role_menu` VALUES (4491, 1, 278);
INSERT INTO `sys_role_menu` VALUES (4492, 1, 279);
INSERT INTO `sys_role_menu` VALUES (4493, 1, 280);
INSERT INTO `sys_role_menu` VALUES (4494, 1, 53);
INSERT INTO `sys_role_menu` VALUES (4495, 1, 281);
INSERT INTO `sys_role_menu` VALUES (4496, 1, 282);
INSERT INTO `sys_role_menu` VALUES (4497, 1, 283);
INSERT INTO `sys_role_menu` VALUES (4498, 1, 284);
INSERT INTO `sys_role_menu` VALUES (4499, 1, 285);
INSERT INTO `sys_role_menu` VALUES (4500, 1, 54);
INSERT INTO `sys_role_menu` VALUES (4501, 1, 286);
INSERT INTO `sys_role_menu` VALUES (4502, 1, 287);
INSERT INTO `sys_role_menu` VALUES (4503, 1, 288);
INSERT INTO `sys_role_menu` VALUES (4504, 1, 289);
INSERT INTO `sys_role_menu` VALUES (4505, 1, 290);
INSERT INTO `sys_role_menu` VALUES (4506, 1, 55);
INSERT INTO `sys_role_menu` VALUES (4507, 1, 291);
INSERT INTO `sys_role_menu` VALUES (4508, 1, 292);
INSERT INTO `sys_role_menu` VALUES (4509, 1, 293);
INSERT INTO `sys_role_menu` VALUES (4510, 1, 294);
INSERT INTO `sys_role_menu` VALUES (4511, 1, 295);
INSERT INTO `sys_role_menu` VALUES (4512, 1, 96);
INSERT INTO `sys_role_menu` VALUES (4513, 1, 296);
INSERT INTO `sys_role_menu` VALUES (4514, 1, 297);
INSERT INTO `sys_role_menu` VALUES (4515, 1, 298);
INSERT INTO `sys_role_menu` VALUES (4516, 1, 299);
INSERT INTO `sys_role_menu` VALUES (4517, 1, 300);
INSERT INTO `sys_role_menu` VALUES (4518, 1, 97);
INSERT INTO `sys_role_menu` VALUES (4519, 1, 301);
INSERT INTO `sys_role_menu` VALUES (4520, 1, 302);
INSERT INTO `sys_role_menu` VALUES (4521, 1, 303);
INSERT INTO `sys_role_menu` VALUES (4522, 1, 304);
INSERT INTO `sys_role_menu` VALUES (4523, 1, 305);
INSERT INTO `sys_role_menu` VALUES (4524, 1, 102);
INSERT INTO `sys_role_menu` VALUES (4525, 1, 306);
INSERT INTO `sys_role_menu` VALUES (4526, 1, 307);
INSERT INTO `sys_role_menu` VALUES (4527, 1, 308);
INSERT INTO `sys_role_menu` VALUES (4528, 1, 309);
INSERT INTO `sys_role_menu` VALUES (4529, 1, 310);
INSERT INTO `sys_role_menu` VALUES (4530, 3, 1);
INSERT INTO `sys_role_menu` VALUES (4531, 3, 10);
INSERT INTO `sys_role_menu` VALUES (4532, 3, 92);
INSERT INTO `sys_role_menu` VALUES (4533, 3, 93);
INSERT INTO `sys_role_menu` VALUES (4534, 3, 332);
INSERT INTO `sys_role_menu` VALUES (4535, 3, 334);
INSERT INTO `sys_role_menu` VALUES (4536, 3, 11);
INSERT INTO `sys_role_menu` VALUES (4537, 3, 82);
INSERT INTO `sys_role_menu` VALUES (4538, 3, 83);
INSERT INTO `sys_role_menu` VALUES (4539, 3, 311);
INSERT INTO `sys_role_menu` VALUES (4540, 3, 313);
INSERT INTO `sys_role_menu` VALUES (4541, 3, 106);
INSERT INTO `sys_role_menu` VALUES (4542, 3, 340);
INSERT INTO `sys_role_menu` VALUES (4543, 3, 84);
INSERT INTO `sys_role_menu` VALUES (4544, 3, 316);
INSERT INTO `sys_role_menu` VALUES (4545, 3, 318);
INSERT INTO `sys_role_menu` VALUES (4546, 3, 87);
INSERT INTO `sys_role_menu` VALUES (4547, 3, 321);
INSERT INTO `sys_role_menu` VALUES (4548, 3, 323);
INSERT INTO `sys_role_menu` VALUES (4549, 3, 2);
INSERT INTO `sys_role_menu` VALUES (4550, 3, 12);
INSERT INTO `sys_role_menu` VALUES (4551, 3, 64);
INSERT INTO `sys_role_menu` VALUES (4552, 3, 65);
INSERT INTO `sys_role_menu` VALUES (4553, 3, 13);
INSERT INTO `sys_role_menu` VALUES (4554, 3, 68);
INSERT INTO `sys_role_menu` VALUES (4555, 3, 69);
INSERT INTO `sys_role_menu` VALUES (4556, 3, 14);
INSERT INTO `sys_role_menu` VALUES (4557, 3, 112);
INSERT INTO `sys_role_menu` VALUES (4558, 3, 114);
INSERT INTO `sys_role_menu` VALUES (4559, 3, 15);
INSERT INTO `sys_role_menu` VALUES (4560, 3, 117);
INSERT INTO `sys_role_menu` VALUES (4561, 3, 119);
INSERT INTO `sys_role_menu` VALUES (4562, 3, 103);
INSERT INTO `sys_role_menu` VALUES (4563, 3, 122);
INSERT INTO `sys_role_menu` VALUES (4564, 3, 124);
INSERT INTO `sys_role_menu` VALUES (4565, 3, 16);
INSERT INTO `sys_role_menu` VALUES (4566, 3, 72);
INSERT INTO `sys_role_menu` VALUES (4567, 3, 108);
INSERT INTO `sys_role_menu` VALUES (4568, 3, 17);
INSERT INTO `sys_role_menu` VALUES (4569, 3, 58);
INSERT INTO `sys_role_menu` VALUES (4570, 3, 59);
INSERT INTO `sys_role_menu` VALUES (4571, 3, 61);
INSERT INTO `sys_role_menu` VALUES (4572, 3, 62);
INSERT INTO `sys_role_menu` VALUES (4573, 3, 18);
INSERT INTO `sys_role_menu` VALUES (4574, 3, 78);
INSERT INTO `sys_role_menu` VALUES (4575, 3, 19);
INSERT INTO `sys_role_menu` VALUES (4576, 3, 127);
INSERT INTO `sys_role_menu` VALUES (4577, 3, 129);
INSERT INTO `sys_role_menu` VALUES (4578, 3, 20);
INSERT INTO `sys_role_menu` VALUES (4579, 3, 132);
INSERT INTO `sys_role_menu` VALUES (4580, 3, 134);
INSERT INTO `sys_role_menu` VALUES (4581, 3, 21);
INSERT INTO `sys_role_menu` VALUES (4582, 3, 137);
INSERT INTO `sys_role_menu` VALUES (4583, 3, 139);
INSERT INTO `sys_role_menu` VALUES (4584, 3, 22);
INSERT INTO `sys_role_menu` VALUES (4585, 3, 142);
INSERT INTO `sys_role_menu` VALUES (4586, 3, 144);
INSERT INTO `sys_role_menu` VALUES (4587, 3, 3);
INSERT INTO `sys_role_menu` VALUES (4588, 3, 23);
INSERT INTO `sys_role_menu` VALUES (4589, 3, 147);
INSERT INTO `sys_role_menu` VALUES (4590, 3, 149);
INSERT INTO `sys_role_menu` VALUES (4591, 3, 24);
INSERT INTO `sys_role_menu` VALUES (4592, 3, 152);
INSERT INTO `sys_role_menu` VALUES (4593, 3, 154);
INSERT INTO `sys_role_menu` VALUES (4594, 3, 25);
INSERT INTO `sys_role_menu` VALUES (4595, 3, 157);
INSERT INTO `sys_role_menu` VALUES (4596, 3, 159);
INSERT INTO `sys_role_menu` VALUES (4597, 3, 26);
INSERT INTO `sys_role_menu` VALUES (4598, 3, 162);
INSERT INTO `sys_role_menu` VALUES (4599, 3, 164);
INSERT INTO `sys_role_menu` VALUES (4600, 3, 27);
INSERT INTO `sys_role_menu` VALUES (4601, 3, 167);
INSERT INTO `sys_role_menu` VALUES (4602, 3, 169);
INSERT INTO `sys_role_menu` VALUES (4603, 3, 4);
INSERT INTO `sys_role_menu` VALUES (4604, 3, 28);
INSERT INTO `sys_role_menu` VALUES (4605, 3, 173);
INSERT INTO `sys_role_menu` VALUES (4606, 3, 175);
INSERT INTO `sys_role_menu` VALUES (4607, 3, 29);
INSERT INTO `sys_role_menu` VALUES (4608, 3, 178);
INSERT INTO `sys_role_menu` VALUES (4609, 3, 180);
INSERT INTO `sys_role_menu` VALUES (4610, 3, 30);
INSERT INTO `sys_role_menu` VALUES (4611, 3, 183);
INSERT INTO `sys_role_menu` VALUES (4612, 3, 185);
INSERT INTO `sys_role_menu` VALUES (4613, 3, 5);
INSERT INTO `sys_role_menu` VALUES (4614, 3, 31);
INSERT INTO `sys_role_menu` VALUES (4615, 3, 194);
INSERT INTO `sys_role_menu` VALUES (4616, 3, 196);
INSERT INTO `sys_role_menu` VALUES (4617, 3, 91);
INSERT INTO `sys_role_menu` VALUES (4618, 3, 189);
INSERT INTO `sys_role_menu` VALUES (4619, 3, 191);
INSERT INTO `sys_role_menu` VALUES (4620, 3, 32);
INSERT INTO `sys_role_menu` VALUES (4621, 3, 199);
INSERT INTO `sys_role_menu` VALUES (4622, 3, 201);
INSERT INTO `sys_role_menu` VALUES (4623, 3, 6);
INSERT INTO `sys_role_menu` VALUES (4624, 3, 33);
INSERT INTO `sys_role_menu` VALUES (4625, 3, 204);
INSERT INTO `sys_role_menu` VALUES (4626, 3, 206);
INSERT INTO `sys_role_menu` VALUES (4627, 3, 34);
INSERT INTO `sys_role_menu` VALUES (4628, 3, 209);
INSERT INTO `sys_role_menu` VALUES (4629, 3, 211);
INSERT INTO `sys_role_menu` VALUES (4630, 3, 35);
INSERT INTO `sys_role_menu` VALUES (4631, 3, 214);
INSERT INTO `sys_role_menu` VALUES (4632, 3, 216);
INSERT INTO `sys_role_menu` VALUES (4633, 3, 36);
INSERT INTO `sys_role_menu` VALUES (4634, 3, 219);
INSERT INTO `sys_role_menu` VALUES (4635, 3, 221);
INSERT INTO `sys_role_menu` VALUES (4636, 3, 94);
INSERT INTO `sys_role_menu` VALUES (4637, 3, 95);
INSERT INTO `sys_role_menu` VALUES (4638, 3, 8);
INSERT INTO `sys_role_menu` VALUES (4639, 3, 41);
INSERT INTO `sys_role_menu` VALUES (4640, 3, 42);
INSERT INTO `sys_role_menu` VALUES (4641, 3, 45);
COMMIT;

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant` (
  `tenant_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tenant_name` varchar(255) DEFAULT NULL,
  `tenant_description` varchar(255) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cpu_cores` bigint(20) DEFAULT NULL,
  `memory_size` bigint(20) DEFAULT NULL,
  `cpu_used` bigint(20) DEFAULT NULL,
  `memory_used` bigint(20) DEFAULT NULL,
  `project_total` bigint(20) DEFAULT NULL,
  `project_used` bigint(20) DEFAULT NULL,
  `user_total` bigint(20) DEFAULT NULL,
  `user_used` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant` VALUES (11, 'tenant1', 'test tenant', 1, '2020-08-30 11:35:22', 20, 20, 4, 8, 20, 1, 163, 2);
INSERT INTO `sys_tenant` VALUES (12, 'tenant2', '', 1, '2021-04-21 19:20:48', 10, 20, 0, 0, 20, 0, 20, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_tenant_project
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant_project`;
CREATE TABLE `sys_tenant_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tenant_id` bigint(20) DEFAULT NULL,
  `cluster_id` bigint(20) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `project_cpu` bigint(20) DEFAULT NULL,
  `project_memory` bigint(20) DEFAULT NULL,
  `cluster_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_tenant_project
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant_project` VALUES (4, 11, 1, 'test1', '2021-05-17T01:37:06.113Z', 4, 8, 'OCP46-vmware');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `project_name` varchar(50) DEFAULT NULL,
  `tenant_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=728 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', 'feeb53330a9fdda83d1a437be04344970e61bd9caa5670a516b6e6279822d5fa', 'ti8Au5E5ka1fQAo1dq1I', 'shaun@7788.com', '18210118791', 1, 1, '2020-05-24 14:11:15', 'oflbehmjwo7aekofxlwr', 11);
INSERT INTO `sys_user` VALUES (2, 'demo1', NULL, NULL, '1@1.com', '18210118791', 1, 1, '2021-03-31 15:31:40', NULL, 12);
INSERT INTO `sys_user` VALUES (3, 'demo2', NULL, NULL, '1@26463627.com', '18210118791', 1, 1, '2021-03-31 16:15:00', NULL, 11);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_cluster
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_cluster`;
CREATE TABLE `sys_user_cluster` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `cluster_id` bigint(20) DEFAULT NULL COMMENT '集群ID',
  `cluster_token` varchar(2048) DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=763 DEFAULT CHARSET=utf8 COMMENT='用户与集群对应关系';

-- ----------------------------
-- Records of sys_user_cluster
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_cluster` VALUES (28, 2, 1, NULL, NULL);
INSERT INTO `sys_user_cluster` VALUES (30, 3, 1, '', '2021-05-28 12:59:22');
INSERT INTO `sys_user_cluster` VALUES (31, 1, 1, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IndVWGdTQU14YkZNYUVlZlIwUEJ0MkRQcnpCMFdVM040YW8tT3VHV0pMTjgifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJvcGVuc2hpZnQtbWFjaGluZS1jb25maWctb3BlcmF0b3IiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlY3JldC5uYW1lIjoiZGVmYXVsdC10b2tlbi05ZHJycCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50Lm5hbWUiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQudWlkIjoiNGRmMGMxNDItYWNiOC00MWQ3LWJmMzYtODFkYWQxMGZkYjMzIiwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50Om9wZW5zaGlmdC1tYWNoaW5lLWNvbmZpZy1vcGVyYXRvcjpkZWZhdWx0In0.OclnRXCx9LxEw2nyBGicj0M36v6XzRzm62d0JI_LwzNmfwwFQI0_xdgNtlCiqJ9-E2a9oUdJZZKybbjg-_Px5BwjanfrzQqesZVijW3cJXnJjcK0Hzlkjqez5zy0fSY4xr8gdkamyjK7qc4wIUd4oFUStpjsk6vBr7JLuxTJR67wA8yk31P0wgKnj5OQiGnRA8cYITKbfsYyrSg7euKvQi5FdUvZ5gFnCXa7CDyXNo9b0hLvoBMFhYtt1-2O_j-LVwyWQOVusAS-CsCrqFjmKKmjTe_McLlToUfZSzsx4r6f5isTMDatvMjqGsMCIsBlHI9x-8IG8eg4PT1taYcA-Q', '2021-06-11 10:24:48');
INSERT INTO `sys_user_cluster` VALUES (38, 1, 8, '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group`;
CREATE TABLE `sys_user_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `group_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与部门对应关系';

-- ----------------------------
-- Table structure for sys_user_project
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_project`;
CREATE TABLE `sys_user_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `cluster_id` bigint(20) DEFAULT NULL COMMENT '集群ID',
  `project_name` varchar(255) DEFAULT NULL COMMENT '项目名称',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `create_time` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户与项目对应关系';

-- ----------------------------
-- Records of sys_user_project
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_project` VALUES (5, 1, NULL, 1, 'test1', NULL, 'admin', '2021-05-17T01:37:06.081Z', 'Test1');
INSERT INTO `sys_user_project` VALUES (6, 3, NULL, 1, 'test1', NULL, 'demo2', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=766 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (38, 2, 2);
INSERT INTO `sys_user_role` VALUES (40, 3, 3);
INSERT INTO `sys_user_role` VALUES (41, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户Token';

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_token` VALUES (1, 'aa74e30b672bd0243f036dcea14c5d13', '2021-06-10 22:24:48', '2021-06-10 10:24:48');
COMMIT;

-- ----------------------------
-- Table structure for sys_workflow
-- ----------------------------
DROP TABLE IF EXISTS `sys_workflow`;
CREATE TABLE `sys_workflow` (
  `flow_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `process_id` varchar(255) DEFAULT NULL,
  `request_payload` text,
  `process_status` bigint(20) DEFAULT NULL,
  `flow_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_workflow
-- ----------------------------
BEGIN;
INSERT INTO `sys_workflow` VALUES (14, 17, 'test1', '8d1840cd-780f-42dd-a7a5-a07a233393bf', '{\"clusterIds\":[5],\"projectName\":\"test1\",\"displayName\":\"Test1\",\"cpuLimit\":4,\"memoryLimit\":8,\"resourceList\":[{\"apiGroup\":\"/apis/project.openshift.io/v1/projectrequests\",\"resource\":\"{\\\"metadata\\\":{\\\"name\\\":\\\"test1\\\"},\\\"displayName\\\":\\\"Test1\\\",\\\"description\\\":\\\"\\\"}\"},{\"apiGroup\":\"/api/v1/namespaces/test1/resourcequotas\",\"resource\":\"{\\\"apiVersion\\\":\\\"v1\\\",\\\"kind\\\":\\\"ResourceQuota\\\",\\\"metadata\\\":{\\\"name\\\":\\\"default-quota\\\",\\\"namespace\\\":\\\"test1\\\"},\\\"spec\\\":{\\\"hard\\\":{\\\"pods\\\":\\\"10\\\",\\\"requests.cpu\\\":\\\"2\\\",\\\"requests.memory\\\":\\\"4Gi\\\",\\\"limits.cpu\\\":\\\"4\\\",\\\"limits.memory\\\":\\\"8Gi\\\"}}}\"},{\"apiGroup\":\"/api/v1/namespaces/test1/limitranges\",\"resource\":\"{\\\"apiVersion\\\":\\\"v1\\\",\\\"kind\\\":\\\"LimitRange\\\",\\\"metadata\\\":{\\\"name\\\":\\\"limit-mem-cpu-per-pod\\\",\\\"namespace\\\":\\\"test1\\\"},\\\"spec\\\":{\\\"limits\\\":[{\\\"type\\\":\\\"Container\\\",\\\"default\\\":{\\\"cpu\\\":1,\\\"memory\\\":\\\"1Gi\\\"},\\\"defaultRequest\\\":{\\\"cpu\\\":\\\"110m\\\",\\\"memory\\\":\\\"256Mi\\\"}}]}}\"}]}', 1, 'Project Request', '2020-09-18 20:09:27');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
