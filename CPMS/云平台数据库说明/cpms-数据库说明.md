# 数据库说明


## api_privilege

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | 主键 |
| api_link | varchar(255) | 是 | NULL | 接口链接 |
| api_name | varchar(255) | 是 | NULL | 接口名称 |
| create_time | varchar(255) | 是 | NULL | 创建时间 |
| create_user_id | varchar(255) | 是 | NULL | 创建用户id |
| create_user_name | varchar(255) | 是 | NULL | 创建用户名称 |
| token_id | varchar(255) | 是 | NULL | token 的 id |


## api_token

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | 主键 |
| create_time | varchar(255) | 是 | NULL | 创建时间 |
| create_user_id | varchar(255) | 是 | NULL | 创建用户id |
| create_user_name | varchar(255) | 是 | NULL | 创建用户名称 |
| system_id | varchar(255) | 是 | NULL | 系统 id |
| system_name | varchar(255) | 是 | NULL | 系统名称 |
| token | varchar(255) | 是 | NULL | token |
| token_del | varchar(255) | 是 | NULL |  |
| token_end_time | varchar(255) | 是 | NULL | token结束时间 |
| token_name | varchar(255) | 是 | NULL | token名称 |
| token_start_time | varchar(255) | 是 | NULL | token开始时间 |
| token_valid | varchar(255) | 是 | NULL | token是否失效 |


## api_token_log

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | 主键 |
| create_time | varchar(255) | 是 | NULL | 创建时间 |
| log_desc | varchar(255) | 是 | NULL | 日志描述 |
| token_id | varchar(255) | 是 | NULL | token 的 id |
| toke_url | varchar(255) | 是 | NULL | token 的 url |
| token_sucess | varchar(255) | 是 | NULL |  |


## file_upload_info
> 上传文件信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(100) | 否 | 无 | 上传文件编号(主键) |
| file_upload_type | varchar(100) | 是 | NULL | 上传文件分类 |
| file_relation_id | varchar(50) | 是 | NULL | 文件关联编号 |
| file_original_name | text | 是 | NULL | 上传文件原名称 |
| file_new_name | text | 是 | NULL | 上传文件新名称 |
| file_storage_type | varchar(20) | 是 | NULL | 文件存储方式 |
| file_storage_id | varchar(40) | 是 | NULL | 文件存储编号 |
| file_path | text | 是 | NULL | 文件存储路径 |
| file_thumbnail_name | text | 是 | NULL | 图片文件缩略图名称 |
| file_thumbnail_storage_type | varchar(20) | 是 | NULL | 图片文件缩略图存储方式 |
| file_thumbnail_storage_id | varchar(40) | 是 | NULL | 图片文件缩略图存储编号 |
| file_thumbnail_path | text | 是 | NULL | 图片文件缩略图路径 |
| file_size | decimal(15,4) | 是 | NULL | 上传文件尺寸 |
| file_type | varchar(100) | 是 | NULL | 上传文件类型 |
| file_flag | varchar(20) | 是 | NULL | 上传文件标志 |
| file_status | varchar(20) | 是 | NULL | 上传文件状态 |
| file_description | text | 是 | NULL | 上传文件描述 |
| upload_remote_addr | varchar(50) | 是 | NULL | 上传文件终端地址 |
| upload_remote_port | varchar(20) | 是 | NULL | 上传文件终端端口 |
| upload_remote_user | varchar(40) | 是 | NULL | 上传文件终端用户 |
| upload_remote_host | varchar(50) | 是 | NULL | 上传文件终端 ip |
| upload_datetime | datetime | 是 | NULL | 上传文件时间 |
| upload_user_id | varchar(100) | 是 | NULL | 上传用户编号 |
| delete_ip | varchar(50) | 是 | NULL | 删除文件 ip |
| delete_datetime | datetime | 是 | NULL | 删除文件时间 |
| delete_user_id | varchar(100) | 是 | NULL | 删除文件用户编号 |
| deal_flag | varchar(20) | 是 | NULL | 处理标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## hibernate_sequence

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
|  |  |  |  |  |
| next_val | bigint(20) | 是 | NULL |  |


## log_user_access_log
> 用户访问日志表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 日志编号(主键) |
| user_id | varchar(50) | 是 | NULL | 用户编号 |
| department_id | varchar(50) | 是 | NULL | 部门编号 |
| language | varchar(20) | 是 | NULL | 语言 |
| user_cn_name | varchar(50) | 是 | NULL | 用户中文名称 |
| user_en_name | varchar(50) | 是 | NULL | 用户英文名称 |
| access_uri | varchar(200) | 是 | NULL | 访问连接 |
| access_remark | varchar(4000) | 是 | NULL | 访问备注 |
| user_access_datetime | datetime | 是 | NULL | 访问时间 |
| user_access_status | varchar(20) | 是 | NULL | 访问状态 |
| access_ip_address | varchar(100) | 是 | NULL | 访问IP地址 |


## log_user_login_log
> 用户登录日志表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 日志编号(主键) |
| user_id | varchar(50) | 否 | 无 | 用户编号 |
| department_id | varchar(50) | 是 | NULL | 部门编号 |
| language | varchar(20) | 是 | NULL | 语言 |
| user_cn_name | varchar(50) | 是 | NULL | 用户中文名称 |
| user_en_name | varchar(50) | 是 | NULL | 用户英文名称 |
| password | varchar(200) | 是 | NULL | 用户登录密码 |
| salt | varchar(30) | 是 | NULL | 加密添加 salt 散列值 |
| user_login_datetime | datetime | 是 | NULL | 用户登录时间 |
| user_login_status | varchar(20) | 是 | NULL | 用户登录状态 |
| login_ip_address | varchar(100) | 是 | NULL | 用户登录IP地址 |


## mo_server_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | (主键) |
| job_id | varchar(255) | 是 | NULL |  |
| portal_syn_status | int(11) | 是 | NULL |  |
| status | varchar(255) | 是 | NULL |  |


## mo_stackjob_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | (主键) |
| servers_status | int(11) | 是 | NULL |  |
| status | varchar(255) | 是 | NULL |  |


## mo_user_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | (主键) |
| description | varchar(255) | 是 | NULL |  |
| domain_id | varchar(255) | 是 | NULL |  |
| enabled | bit(1) | 是 | NULL |  |
| name | varchar(255) | 是 | NULL |  |
| password_expires_at | datetime | 是 | NULL |  |
| areacode | varchar(255) | 是 | NULL |  |
| create_at | varchar(255) | 是 | NULL |  |
| display_name | varchar(255) | 是 | NULL |  |
| domain_name | varchar(255) | 是 | NULL |  |
| email | varchar(255) | 是 | NULL |  |
| phone | varchar(255) | 是 | NULL |  |
| resource_tenant_id | varchar(255) | 是 | NULL |  |
| user_type | varchar(255) | 是 | NULL |  |
| vdc_id | varchar(255) | 是 | NULL |  |


## mo_vdc_filter_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | (主键) |
| description | varchar(255) | 是 | NULL |  |
| enabled | int(11) | 是 | NULL |  |
| level | int(11) | 是 | NULL |  |
| name | varchar(255) | 是 | NULL |  |
| upper_vdc_id | varchar(255) | 是 | NULL |  |


## mo_vdc_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | (主键) |
| az_id | varchar(255) | 是 | NULL |  |
| create_at | varchar(255) | 是 | NULL |  |
| create_user_id | varchar(255) | 是 | NULL |  |
| create_user_name | varchar(255) | 是 | NULL |  |
| description | varchar(255) | 是 | NULL |  |
| domain_id | varchar(255) | 是 | NULL |  |
| domain_name | varchar(255) | 是 | NULL |  |
| enabled | bit(1) | 是 | NULL |  |
| enterprise_id | varchar(255) | 是 | NULL |  |
| enterprise_project_id | varchar(255) | 是 | NULL |  |
| idp_name | varchar(255) | 是 | NULL |  |
| level | int(11) | 是 | NULL |  |
| name | varchar(255) | 是 | NULL |  |
| region_id | varchar(255) | 是 | NULL |  |
| tag | varchar(255) | 是 | NULL |  |
| third_id | varchar(255) | 是 | NULL |  |
| third_type | varchar(255) | 是 | NULL |  |
| upper_vdc_id | varchar(255) | 是 | NULL |  |
| password | varchar(255) | 是 | NULL |  |


## os_dir_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | (主键) |
| rdc | varchar(255) | 是 | NULL |  |
| rdn | varchar(255) | 是 | NULL |  |
| create_time | varchar(255) | 是 | NULL |  |
| dir_group | varchar(255) | 是 | NULL |  |
| dir_owner | varchar(255) | 是 | NULL |  |
| domain_type | varchar(255) | 是 | NULL |  |
| file_id | varchar(255) | 是 | NULL |  |
| file_type | varchar(255) | 是 | NULL |  |
| lastaccess_time | varchar(255) | 是 | NULL |  |
| logic_capacity | varchar(255) | 是 | NULL |  |
| modified_time | varchar(255) | 是 | NULL |  |
| name | varchar(255) | 是 | NULL |  |
| node_type | varchar(255) | 是 | NULL |  |
| parallel_stripe_width | varchar(255) | 是 | NULL |  |
| parent_dir | varchar(255) | 是 | NULL |  |
| physical_capacity | varchar(255) | 是 | NULL |  |
| redundant_rate | varchar(255) | 是 | NULL |  |
| redundant_type | varchar(255) | 是 | NULL |  |
| share_type | varchar(255) | 是 | NULL |  |
| stripe_policy | varchar(255) | 是 | NULL |  |
| unix_mod | varchar(255) | 是 | NULL |  |


## quota_application_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | (主键) |
| applicant_id | varchar(225) | 是 | NULL | 申请人编号 |
| applicant_name | varchar(100) | 是 | NULL | 申请人姓名 |
| phone | varchar(100) | 是 | NULL | 联系方式 |
| center_name | varchar(100) | 是 | NULL | 所属中心名称 |
| application_datetime | datetime | 是 | NULL | 申请时间 |
| valid_flag | varchar(50) | 是 | NULL | 失效标识 |
| status | varchar(50) | 是 | NULL | 状态 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| create_id | varchar(225) | 是 | NULL | 创建人编号 |
| create_name | varchar(100) | 是 | NULL | 创建人姓名 |
| create_group_id | varchar(225) | 是 | NULL | 创建人用户组编号 |
| create_group_name | varchar(100) | 是 | NULL | 创建人用户组名称 |
| note | varchar(225) | 是 | NULL | 备注 |
| server_id | varchar(225) | 是 | NULL | 服务器编号 |
| server_name | varchar(100) | 是 | NULL | 服务器名称 |
| center_id | varchar(255) | 是 | NULL | 所属中心 id |
| changed_server_capacity | varchar(255) | 是 | NULL | 变更服务器容量 |
| changed_server_config | varchar(255) | 是 | NULL | 变更服务器配置 |
| changed_server_num | varchar(255) | 是 | NULL | 变更服务器数量 |
| create_department_id | varchar(255) | 是 | NULL | 创建人部门 id |
| create_department_name | varchar(255) | 是 | NULL | 创建人部门名称 |
| cur_server_capacity | varchar(255) | 是 | NULL | 现有服务器容量 |
| cur_server_config | varchar(255) | 是 | NULL | 现有服务器配置 |
| cur_server_num | varchar(255) | 是 | NULL | 现有服务器数量 |
| quota_id | varchar(255) | 是 | NULL | 配额信息 id |
| top_group_center | varchar(255) | 是 | NULL | 顶级用户组中心 |
| apply_code | varchar(255) | 是 | NULL | 申请代码 |


## quota_application_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 | (主键) |
| applicant_id | varchar(255) | 是 | NULL | 申请人编号 |
| applicant_name | varchar(100) | 是 | NULL | 申请人姓名 |
| phone | varchar(100) | 是 | NULL | 联系方式 |
| center_name | varchar(100) | 是 | NULL | 所属中心名称 |
| application_datetime | datetime | 是 | NULL | 申请时间 |
| valid_flag | varchar(50) | 是 | NULL | 失效标识 |
| status | varchar(50) | 是 | NULL | 状态 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| create_id | varchar(225) | 是 | NULL | 创建人编号 |
| create_name | varchar(100) | 是 | NULL | 创建人姓名 |
| create_group_id | varchar(225) | 是 | NULL | 创建人用户组编号 |
| create_group_name | varchar(100) | 是 | NULL | 创建人用户组名称 |
| note | varchar(225) | 是 | NULL | 备注 |
| server_id | varchar(225) | 是 | NULL | 服务器编号 |
| server_name | varchar(100) | 是 | NULL | 服务器名称 |
| center_id | varchar(255) | 是 | NULL | 所属中心 id |
| changed_server_capacity | varchar(255) | 是 | NULL | 变更服务器容量 |
| changed_server_config | varchar(255) | 是 | NULL | 变更服务器配置 |
| changed_server_num | varchar(255) | 是 | NULL | 变更服务器数量 |
| create_department_id | varchar(255) | 是 | NULL | 创建人部门 id |
| create_department_name | varchar(255) | 是 | NULL | 创建人部门名称 |
| cur_server_capacity | varchar(255) | 是 | NULL | 现有服务器容量 |
| cur_server_config | varchar(255) | 是 | NULL | 现有服务器配置 |
| cur_server_num | varchar(255) | 是 | NULL | 现有服务器数量 |
| quota_id | varchar(255) | 是 | NULL | 配额信息 id |
| top_group_center | varchar(255) | 是 | NULL | 顶级用户组中心 |
| apply_code | varchar(255) | 是 | NULL | 申请代码 |


## quota_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(225) | 否 | 无 | (主键) |
| name | varchar(100) | 是 | NULL | 名称 |
| server_num | varchar(100) | 是 | NULL | 服务器数目 |
| server_config | varchar(100) | 是 | NULL | 服务器配置 |
| server_capacity | varchar(100) | 是 | NULL | 服务器容量 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| server_desc | varchar(225) | 是 | NULL | 服务器描述 |
| note | varchar(225) | 是 | NULL | 备注 |
| create_id | varchar(225) | 是 | NULL | 创建人 id |
| create_name | varchar(100) | 是 | NULL | 创建人名称 |
| create_department_id | varchar(225) | 是 | NULL | 创建人部门 id |
| create_department_name | varchar(100) | 是 | NULL | 创建人部门名称 |
| update_id | varchar(225) | 是 | NULL | 修改人id |
| update_name | varchar(100) | 是 | NULL | 修改人名称 |
| update_department_id | varchar(225) | 是 | NULL | 修改人部门id |
| update_department_name | varchar(100) | 是 | NULL | 修改人部门名称 |
| valid_flag | varchar(50) | 是 | NULL | 效力标识 |


## storage_catalog_info
> 存储目录信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 目录编号(主键) |
| catalog_type | varchar(100) | 是 | NULL | 目录类型 |
| catalog_name | varchar(200) | 是 | NULL | 目录名称 |
| catalog_path | varchar(200) | 是 | NULL | 目录路径 |
| catalog_owner | varchar(200) | 是 | NULL | 目录所有者 |
| catalog_level | int(11) | 是 | NULL | 目录等级 |
| order_seq | int(11) | 是 | NULL | 目录顺序 |
| parent_id | varchar(50) | 是 | NULL | 上级目录编号 |
| catalog_create_datetime | datetime | 是 | NULL | 创建时间 |
| show_flag | varchar(5) | 是 | NULL | 显示标志 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| permission | varchar(255) | 是 | NULL |  |
| dir_desc | varchar(1024) | 是 | NULL | 目录描述 |


## sw_download_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(100) | 否 | 无 | 软件下载编号(主键) |
| version_id | varchar(50) | 是 | NULL | 软件版本编号 |
| software_id | varchar(50) | 是 | NULL | 软件编号 |
| download_user_id | varchar(100) | 是 | NULL | 下载用户 id |
| download_user_group_id | varchar(100) | 是 | NULL | 下载用户用户组 id |
| download_datetime | datetime | 是 | NULL | 下载时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## sw_software_base_info
> 软件仓库软件基本信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 软件编号(主键) |
| software_name | varchar(200) | 是 | NULL | 软件名称 |
| software_sub_name | varchar(200) | 是 | NULL | 软件子名 |
| software_type | varchar(100) | 是 | NULL | 软件类型（OS：操作系统；LANGUAGE：编程语言，TOOLS：应用工具） |
| software_attribute | varchar(50) | 是 | NULL | 软件属性（PUBLIC，CENTER） |
| software_ownner | varchar(50) | 是 | NULL | 软件所有者（各中心id） |
| software_os | varchar(50) | 是 | NULL | 软件操作系统 |
| software_os_bit | varchar(50) | 是 | NULL | 软件操作系统位数 |
| icon_file_id | varchar(100) | 是 | NULL | 软件图标文件 id |
| software_introduction | text | 是 | NULL | 软件介绍 |
| software_path | varchar(500) | 是 | NULL | 软件存放路径 |
| latest_version | varchar(100) | 是 | NULL | 软件最新版本 |
| latest_upload_datatime | datetime | 是 | NULL | 软件最后上传时间 |
| download_amount | int(8) | 是 | NULL | 软件下载总数 |
| visit_amount | int(8) | 是 | NULL | 软件访问总数 |
| comment_amount | int(8) | 是 | NULL | 软件评论总数 |
| review_status | varchar(20) | 是 | NULL | 最新版本审核状态 |
| software_share | varchar(20) | 是 | NULL | 是否共享1:共享，0：不共享 |
| show_seq | int(8) | 是 | NULL | 显示顺序 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## sw_software_comment

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 评论编号(主键) |
| software_id | varchar(50) | 是 | NULL | 软件编号 |
| comment_content | text | 是 | NULL | 评论内容 |
| comment_user_id | varchar(100) | 是 | NULL | 评论用户 id |
| comment_user_group_id | varchar(100) | 是 | NULL | 评论用户用户组 id |
| comment_datetime | datetime | 是 | NULL | 评论时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## sw_software_version_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 软件版本编号(主键) |
| software_id | varchar(50) | 是 | NULL | 软件编号 |
| software_version | varchar(100) | 是 | NULL | 软件版本 |
| software_size | varchar(100) | 是 | NULL | 软件大小 |
| version_description | text | 是 | NULL | 版本说明 |
| dependency_description | text | 是 | NULL | 依赖说明 |
| deployment_description | text | 是 | NULL | 安装部署说明 |
| software_file_id | varchar(100) | 是 | NULL | 软件文件文件 id |
| url_type | varchar(20) | 是 | NULL | 路径类型（FILE，FOLDER） |
| upload_user_id | varchar(50) | 是 | NULL | 上传用户 id |
| upload_user_group_id | varchar(50) | 是 | NULL | 上传用户用户组 id |
| upload_datatime | datetime | 是 | NULL | 上传时间 |
| review_remark | text | 是 | NULL | 审核意见 |
| review_status | varchar(20) | 是 | NULL | 审核状态（PENDING：待审核，ACCEPTED：通过，REFUSED：不通过） |
| review_user_id | varchar(50) | 是 | NULL | 审核用户 id |
| review_datatime | datetime | 是 | NULL | 审核时间 |
| show_seq | int(8) | 是 | NULL | 显示顺序 |
| download_amount | int(8) | 是 | NULL | 软件下载总数 |
| visit_amount | int(8) | 是 | NULL | 软件访问总数 |
| comment_amount | int(8) | 是 | NULL | 软件评论总数 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| software_ownner | varchar(50) | 是 | NULL | 软件所有者（各中心 id） |
| software_name | varchar(200) | 是 | NULL | 软件名称 |
| software_attribute | varchar(50) | 是 | NULL | 软件属性（PUBLIC，CENTER） |


## sys_cabin_info
> 舱段信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(100) | 否 | 无 | 舱段 id (主键) |
| cabin_name | varchar(200) | 是 | NULL | 舱段名称 |
| cabin_type | varchar(50) | 是 | NULL | 舱段类型 |
| cabin_short_name | varchar(50) | 是 | NULL | 舱段简称 |
| parent_id | varchar(100) | 是 | NULL | 父级舱段 id |
| cabin_level | varchar(5) | 是 | NULL | 舱段等级 |
| order_seq | int(5) | 是 | NULL | 显示顺序 |
| cabin_remark | varchar(2000) | 是 | NULL | 舱段备注 |
| cabin_flag | varchar(5) | 是 | NULL | 舱段标志 |
| cabin_status | varchar(5) | 是 | NULL | 舱段状态 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| cabin_phone | varchar(255) | 是 | NULL | 舱段联系方式 |


## sys_center_info
> 中心信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(100) | 否 | 无 | 中心 id (主键) |
| cabin_id | varchar(100) | 是 | NULL | 舱段 id |
| cabin_name | varchar(200) | 是 | NULL | 舱段名称 |
| center_type | varchar(50) | 是 | NULL | 中心类型 |
| center_name | varchar(200) | 是 | NULL | 中心名称 |
| center_short_name | varchar(50) | 是 | NULL | 中心简称 |
| center_database_name | varchar(100) | 是 | NULL | 中心库名称 |
| center_phone | varchar(30) | 是 | NULL | 中心电话 |
| parents_id | varchar(100) | 是 | NULL | 父级 id |
| center_level | varchar(5) | 是 | NULL | 中心等级 |
| order_seq | int(5) | 是 | NULL | 显示顺序 |
| center_remark | varchar(2000) | 是 | NULL | 中心备注 |
| center_flag | varchar(5) | 是 | NULL | 中心标志 |
| center_status | varchar(5) | 是 | NULL | 中心状态 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## sys_cross_apply
> 跨中心访问申请表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(120) | 否 | 无 | 中心 id (主键) |
| order_no | varchar(120) | 是 | NULL | 申请订单号 |
| apply_cabin | varchar(120) | 是 | NULL | 申请人舱段 |
| apply_center | varchar(120) | 是 | NULL | 申请中心 |
| apply_user_id | varchar(120) | 是 | NULL | 申请人 id |
| apply_user_name | varchar(60) | 是 | NULL | 申请人姓名 |
| data_source_cabin | varchar(120) | 是 | NULL | 数据来源方舱段 |
| data_source_center | varchar(120) | 是 | NULL | 数据来源方中心 |
| data_status | varchar(60) | 是 | NULL | 数据状态 |
| valid_flag | varchar(4) | 是 | NULL | 是否生效 |
| data_start_time | varchar(40) | 是 | NULL | 数据访问有效开始时间 |
| data_end_time | varchar(40) | 是 | NULL | 数据访问有效结束时间 |
| collect_start_time | varchar(40) | 是 | NULL | 数据采集开始时间 |
| collect_end_time | varchar(40) | 是 | NULL | 数据采集结束时间 |
| apply_reason | varchar(1200) | 是 | NULL | 申请理由 |
| create_time | varchar(40) | 是 | NULL | 创建时间 |
| create_center | varchar(40) | 是 | NULL | 创建人中心 |
| data_source | varchar(255) | 是 | NULL | 数据来源 |
| data_staus | varchar(255) | 是 | NULL | 数据状态 |
| data_source_sub | varchar(255) | 是 | NULL | 数据来源缩写 |
| link_method | varchar(255) | 是 | NULL | 链接方式 |
| person_name | varchar(255) | 是 | NULL | 用户真实名称 |


## sys_ftp_config
> 系统ftp配置表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(60) | 否 | 无 | (主键) |
| ftp_user | varchar(60) | 是 | NULL | ftp 用户名 |
| ftp_password | varchar(60) | 是 | NULL | ftp 密码 |
| ftp_ip | varchar(20) | 是 | NULL | ftp 主机 ip |
| ftp_port | varchar(8) | 是 | NULL | ftp 端口 |
| user_code | varchar(60) | 是 | NULL | 用户编码 |
| user_id | varchar(60) | 是 | NULL | 用户 id |
| create_user_id | varchar(60) | 是 | NULL | 创建人 id |
| create_user_name | varchar(60) | 是 | NULL | 创建人名称 |
| create_tieme | varchar(20) | 是 | NULL | 创建时间 |
| update_user_id | varchar(60) | 是 | NULL | 修改人 id |
| update_user_name | varchar(60) | 是 | NULL | 修改人名称 |
| update_time | varchar(20) | 是 | NULL | 修改时间 |


## sys_maintype_info
> 大类信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(100) | 否 | 无 | 大类 id (主键) |
| cabin_id | varchar(100) | 是 | NULL | 舱段 id |
| cabin_name | varchar(200) | 是 | NULL | 舱段名称 |
| center_id | varchar(50) | 是 | NULL | 中心 id |
| center_name | varchar(200) | 是 | NULL | 中心名称 |
| maintype_type | varchar(50) | 是 | NULL | 大类类型 |
| maintype_name | varchar(200) | 是 | NULL | 大类名称 |
| maintype_short_name | varchar(50) | 是 | NULL | 大类简称 |
| parents_id | varchar(100) | 是 | NULL | 父级 id |
| maintype_level | varchar(5) | 是 | NULL | 大类等级 |
| order_seq | int(5) | 是 | NULL | 显示顺序 |
| maintype_remark | varchar(2000) | 是 | NULL | 大类备注 |
| maintype_flag | varchar(5) | 是 | NULL | 大类标志 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## sys_menu_info
> 系统菜单表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 菜单编号 (主键) |
| language | varchar(20) | 是 | NULL | 语言 |
| menu_type | varchar(100) | 是 | NULL | 菜单类型 |
| menu_sub_type | varchar(100) | 是 | NULL | 菜单子类型 |
| menu_name | varchar(200) | 是 | NULL | 菜单名称 |
| menu_url | varchar(2000) | 是 | NULL | 菜单连接 |
| menu_icon | varchar(200) | 是 | NULL | 菜单图标 |
| operation_icon | varchar(200) | 是 | NULL | 操作图标 |
| title_icon | varchar(200) | 是 | NULL | 标题图标 |
| menu_class | varchar(200) | 是 | NULL | 菜单 css 样式 |
| sub_menu_class | varchar(200) | 是 | NULL | 子菜单 css 样式 |
| menu_level | int(11) | 是 | NULL | 菜单等级 |
| order_seq | int(11) | 是 | NULL | 菜单顺序 |
| parent_id | varchar(50) | 是 | NULL | 父级菜单 id |
| show_flag | varchar(5) | 是 | NULL | 显示标志 |
| redirect | varchar(500) | 是 | NULL | 菜单转向 |
| component | varchar(100) | 是 | NULL | 菜单所属组件 |
| route | varchar(20) | 是 | NULL | 菜单路由（"1"） |
| keep_alive | varchar(20) | 是 | NULL | 是否保持（“false”） |
| internal_or_external | varchar(20) | 是 | NULL | 内部或外部标志（“false”） |
| menu_title | varchar(200) | 是 | NULL | 菜单标题 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## sys_sequence
> 系统序号表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 序号编号(主键) |
| sequence_name | varchar(50) | 是 | NULL | 序号名称 |
| sequence_format | varchar(50) | 是 | NULL | 序号格式 |
| sequence_step | int(11) | 是 | NULL | 序号步长 |
| sequence_value | int(11) | 是 | NULL | 序号现值 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| name | varchar(20) | 是 | NULL |  |
| format | varchar(50) | 是 | NULL |  |
| value | int(11) | 是 | NULL |  |


## sys_subtype_info
> 小类信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(100) | 否 | 无 | 小类 id(主键) |
| cabin_id | varchar(100) | 是 | NULL | 舱段 id |
| cabin_name | varchar(200) | 是 | NULL | 舱段名称 |
| center_id | varchar(50) | 是 | NULL | 中心 id |
| center_name | varchar(200) | 是 | NULL | 中心名称 |
| maintype_id | varchar(50) | 是 | NULL | 大类 id |
| maintype_name | varchar(200) | 是 | NULL | 大类名称 |
| subtype_type | varchar(50) | 是 | NULL | 小类类型 |
| subtype_name | varchar(200) | 是 | NULL | 小类名称 |
| subtype_short_name | varchar(50) | 是 | NULL | 小类简称 |
| subtype_table_name | varchar(100) | 是 | NULL | 小类表名称 |
| archieve_mode | varchar(20) | 是 | NULL | 归档方式（WEB、API、DB） |
| data_type | varchar(20) | 是 | NULL | 数据类型（FILE，DATA） |
| collection_time_flag | varchar(20) | 是 | NULL | 采集时间标志 |
| upload_component | varchar(100) | 是 | NULL | 上传组件 |
| parents_id | varchar(100) | 是 | NULL | 父级大类 id |
| subtype_level | varchar(5) | 是 | NULL | 小类等级 |
| order_seq | int(5) | 是 | NULL | 显示顺序 |
| subtype_remark | varchar(2000) | 是 | NULL | 小类备注 |
| subtype_flag | varchar(5) | 是 | NULL | 小类标志 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| date_type | varchar(255) | 是 | NULL | 数据类型 |


## sys_system_code
> 系统代码表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| code_id | varchar(200) | 否 | 无 | 代码编号(主键) |
| code_type | varchar(100) | 否 | 无 | 代码类型 |
| language | varchar(20) | 是 | NULL | 语言 |
| value | varchar(500) | 是 | NULL | 代码值 |
| parents_id | varchar(100) | 是 | NULL | 父级代码编号 |
| code_level | varchar(5) | 是 | NULL | 代码等级 |
| order_seq | int(11) | 是 | NULL | 代码顺序 |
| valid_date | datetime | 是 | NULL | 生效日期 |
| code_remark | varchar(2000) | 是 | NULL | 代码备注 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## sys_system_config
> 系统配置表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| config_id | varchar(200) | 否 | 无 | 配置编号(主键) |
| config_type | varchar(100) | 是 | NULL | 配置类型 |
| config_name | text | 是 | NULL | 配置名称 |
| config_value | text | 是 | NULL | 配置值 |
| parent_id | varchar(100) | 是 | NULL | 父级配置编号 |
| config_level | varchar(5) | 是 | NULL | 配置等级 |
| valid_date | datetime | 是 | NULL | 生效日期 |
| config_remark | varchar(2000) | 是 | NULL | 配置备注 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## terminate_application_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(225) | 否 | 无 |  (主键) |
| apply_code | varchar(225) | 是 | NULL | 编号 |
| applicant_id | varchar(225) | 是 | NULL | 申请人 id |
| applicant_name | varchar(100) | 是 | NULL | 申请人名称 |
| phone | varchar(50) | 是 | NULL | 联系方式 |
| center_name | varchar(100) | 是 | NULL | 中心名称 |
| application_datetime | datetime | 是 | NULL | 申请时间 |
| ip | varchar(100) | 是 | NULL | ip 地址 |
| valid_flag | varchar(50) | 是 | NULL | 失效标识 |
| status | varchar(50) | 是 | NULL | 状态 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| create_id | varchar(225) | 是 | NULL | 创建人 id |
| create_name | varchar(100) | 是 | NULL | 创建人名称 |
| create_department_id | varchar(225)  | 是 | NULL | 创建人部门 id |
| create_department_name | varchar(100) | 是 | NULL | 创建部门名称 |
| note | varchar(225)  | 是 | NULL | 备注 |
| ad_auto_check | varchar(100) | 是 | NULL | Windows AD域用户登录检查 |
| antivirus | varchar(100) | 是 | NULL | 杀毒软件检查 |
| auto_run | varchar(100) | 是 | NULL | 启动项检查 |
| auto_update | varchar(100) | 是 | NULL | 系统自动更新检查 |
| ban_dev | varchar(100) | 是 | NULL | 禁用外设检查 |
| ban_installed | varchar(100) | 是 | NULL | 禁止安装软件 |
| ban_os_ver | varchar(100) | 是 | NULL | 禁用操作系统检查 |
| check_process | varchar(100) | 是 | NULL | 禁止运行进程 |
| dhcp_check | varchar(100) | 是 | NULL | DHCP检查 |
| disk | varchar(100) | 是 | NULL | 磁盘使用检查 |
| guest | varchar(100) | 是 | NULL | 来宾账号检查 |
| ie_homepage | varchar(100) | 是 | NULL | IE 主页检查 |
| memory | varchar(100) | 是 | NULL | 内存占用率检查 |
| more_os | varchar(100) | 是 | NULL | 禁止使用多系统 |
| must_installed | varchar(100) | 是 | NULL | 必须安装软件 |
| must_process | varchar(100) | 是 | NULL | 必须运行进程 |
| must_service | varchar(100) | 是 | NULL | 必须运行服务 |
| net_force | varchar(100) | 是 | NULL | 网络强制检查 |
| patch | varchar(100) | 是 | NULL | 补丁检查 |
| port | varchar(100) | 是 | NULL | 网络端口检查 |
| print_black | varchar(100) | 是 | NULL | 禁止安装的打印机 |
| print_white | varchar(100) | 是 | NULL | 必须安装的打印机 |
| remote_desktop | varchar(100) | 是 | NULL | 远程桌面检查 |
| screen_save | varchar(100) | 是 | NULL | 屏幕保护检查 |
| service | varchar(100) | 是 | NULL | 禁止运行服务 |
| share | varchar(100) | 是 | NULL | 共享目录检查 |
| sys_policy | varchar(100) | 是 | NULL | 系统安全检查 |


## uc_department_info
> 用户中心部门信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 部门编号(主键) |
| language | varchar(20) | 是 | NULL | 语言 |
| department_type | varchar(50) | 是 | NULL | 部门类型 |
| department_name | varchar(200) | 是 | NULL | 部门名称 |
| department_short_name | varchar(255) | 是 | NULL | 部门简称 |
| department_address | text | 是 | NULL | 部门地址 |
| department_phone | varchar(30) | 是 | NULL | 部门电话 |
| department_fax | varchar(30) | 是 | NULL | 部门传真 |
| parents_id | varchar(50) | 是 | NULL | 父级部门编号 |
| department_level | varchar(5) | 是 | NULL | 部门等级 |
| website_url | varchar(100) | 是 | NULL | 部门网页链接 |
| department_remark | varchar(4000) | 是 | NULL | 部门备注 |
| outer_code | varchar(20) | 是 | NULL | 部门外部编码 |
| inner_code | varchar(20) | 是 | NULL | 部门内部编码 |
| department_status | varchar(5) | 是 | NULL | 部门状态 |
| department_flag | varchar(5) | 是 | NULL | 部门标志 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| top_group_center | varchar(256) | 是 | NULL | 顶级用户组即机构 |


## uc_group_info
> 用户中心用户组信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 用户组编号(主键) |
| language | varchar(20) | 是 | NULL | 语言 |
| group_type | varchar(20) | 是 | NULL | 用户组类型 |
| group_type_name | varchar(50) | 是 | NULL | 用户组类型名称 |
| group_group | varchar(20) | 是 | NULL | 用户组分组 |
| group_group_name | varchar(200) | 是 | NULL | 用户组分组名称 |
| group_name | varchar(100) | 是 | NULL | 用户组名称 |
| group_description | varchar(2000) | 是 | NULL | 用户组描述 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| top_group_center | varchar(256) | 是 | NULL | 顶级用户组即机构 |


## uc_group_role_mapping
> 用户中心用户组角色映射表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 用户组角色映射编号(主键) |
| group_id | varchar(50) | 是 | NULL | 用户组编号 |
| group_cn_name | varchar(100) | 是 | NULL | 用户组中文名称 |
| group_en_name | varchar(200) | 是 | NULL | 用户组英文名称 |
| role_id | varchar(50) | 是 | NULL | 角色编号 |
| role_cn_name | varchar(100) | 是 | NULL | 角色中文名称 |
| role_en_name | varchar(200) | 是 | NULL | 角色英文名称 |
| effect_datetime | datetime | 是 | NULL | 生效时间 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |


## uc_group_strategy_mapping
> 用户中心用户组策略映射表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(150) | 否 | 无 | 用户组角色映射编号(主键) |
| group_id | varchar(50) | 是 | NULL | 用户组编号 |
| group_cn_name | varchar(100) | 是 | NULL | 用户组中文名称 |
| group_en_name | varchar(200) | 是 | NULL | 用户组英文名称 |
| strategy_id | varchar(50) | 是 | NULL | 策略编号 |
| strategy_cn_name | varchar(100) | 是 | NULL | 策略中文名称 |
| strategy_en_name | varchar(200) | 是 | NULL | 策略英文名称 |
| effect_datetime | datetime | 是 | NULL | 生效时间 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |


## uc_manage_group_mapping

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(256) | 否 | 无 |  (主键) |
| vdc_id | varchar(155) | 是 | NULL | vdc_id |
| vdc_name | varchar(255) | 是 | NULL | vdc 名称 |
| group_id | varchar(60) | 是 | NULL | 用户组 id |
| group_name | varchar(120) | 是 | NULL | 用户组名称 |
| create_time | varchar(20) | 是 | NULL | 创建时间 |
| create_id | varchar(60) | 是 | NULL | 创建人 id |
| create_name | varchar(120) | 是 | NULL | 创建人姓名 |
| center_id | varchar(155) | 是 | NULL | 中心 id |
| center_name | varchar(155) | 是 | NULL | 中心名称 |


## uc_privilege_info
> 用户中心权限信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 权限编号(主键) |
| language | varchar(20) | 是 | NULL | 语言 |
| privilege_name | varchar(100) | 是 | NULL | 权限名称 |
| privilege_type | varchar(100) | 是 | NULL | 权限类型 |
| privilege_type_name | varchar(200) | 是 | NULL | 权限类型名称 |
| privilege_group | varchar(100) | 是 | NULL | 权限分组 |
| privilege_group_name | varchar(200) | 是 | NULL | 权限分组名称 |
| privilege_value | varchar(200) | 是 | NULL | 权限值 |
| privilege_description | varchar(2000) | 是 | NULL | 权限描述 |
| operative_type | varchar(20) | 是 | NULL | 操作类型 |
| permission_type | varchar(20) | 是 | NULL | 许可类型 |
| parent_id | varchar(50) | 是 | NULL | 父级权限编码 |
| privilege_level | decimal(65,30) | 是 | NULL | 权限等级 |
| char_remark1 | varchar(200) | 是 | NULL | 字符预留字段1 |
| char_remark2 | varchar(200) | 是 | NULL | 字符预留字段2 |
| char_remark3 | varchar(200) | 是 | NULL | 字符预留字段3 |
| char_remark4 | varchar(200) | 是 | NULL | 字符预留字段4 |
| char_remark5 | varchar(200) | 是 | NULL | 字符预留字段5 |
| num_remark1 | decimal(20,6) | 是 | NULL | 数值预留字段1 |
| num_remark2 | decimal(20,6) | 是 | NULL | 数值预留字段2 |
| num_remark3 | decimal(20,6) | 是 | NULL | 数值预留字段3 |
| num_remark4 | decimal(20,6) | 是 | NULL | 数值预留字段4 |
| num_remark5 | decimal(20,6) | 是 | NULL | 数值预留字段5 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## uc_role_info
> 用户中心角色信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 角色编号(主键) |
| language | varchar(20) | 是 | NULL | 语言 |
| role_type | varchar(100) | 是 | NULL | 角色类型 |
| role_type_name | varchar(200) | 是 | NULL | 角色类型名称 |
| role_group | varchar(100) | 是 | NULL | 角色分组 |
| role_group_name | varchar(200) | 是 | NULL | 角色分组名称 |
| role_name | varchar(200) | 是 | NULL | 角色名称 |
| role_description | varchar(2000) | 是 | NULL | 角色描述 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## uc_role_privilege_mapping
> 用户中心角色权限映射表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(150) | 否 | 无 | 角色权限映射编号(主键) |
| role_id | varchar(50) | 是 | NULL | 角色编号 |
| role_cn_name | varchar(200) | 是 | NULL | 角色中文名称 |
| role_en_name | varchar(200) | 是 | NULL | 角色英文名称 |
| privilege_id | varchar(50) | 是 | NULL | 权限编号 |
| privilege_cn_name | varchar(200) | 是 | NULL | 权限中文名称 |
| privilege_en_name | varchar(200) | 是 | NULL | 权限中文名称 |
| effect_datetime | datetime | 是 | NULL | 生效时间 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |


## uc_strategy_info
> 用户中心策略信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(70) | 否 | 无 | 策略编号(主键) |
| language | varchar(20) | 是 | NULL | 语言 |
| strategy_type | varchar(100) | 是 | NULL | 策略类型 |
| strategy_type_name | varchar(200) | 是 | NULL | 策略类型名称 |
| strategy_group | varchar(100) | 是 | NULL | 策略分组 |
| strategy_group_name | varchar(200) | 是 | NULL | 策略分组名称 |
| strategy_name | varchar(200) | 是 | NULL | 策略名称 |
| strategy_description | varchar(2000) | 是 | NULL | 策略描述 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| top_group_center | varchar(256) | 是 | NULL | 顶级用户组即机构 |


## uc_strategy_privilege_mapping
> 用户中心策略权限映射表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(256) | 否 | 无 | 策略权限映射编号(主键) |
| strategy_id | varchar(50) | 是 | NULL | 策略编号 |
| strategy_cn_name | varchar(200) | 是 | NULL | 策略中文名称 |
| strategy_en_name | varchar(200) | 是 | NULL | 策略英文名称 |
| privilege_id | varchar(50) | 是 | NULL | 权限编号 |
| privilege_cn_name | varchar(200) | 是 | NULL | 权限中文名称 |
| privilege_en_name | varchar(200) | 是 | NULL | 权限中文名称 |
| effect_datetime | datetime | 是 | NULL | 生效时间 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |


## uc_user_authorize
> 用户中心用户授权表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(50) | 否 | 无 | 授权编号(主键) |
| authorize_type | varchar(20) | 是 | NULL | 授权类型(ROLE；PRIVILEGE) |
| authorize_type_name | varchar(200) | 是 | NULL | 授权类型名称 |
| authorize_user_id | varchar(50) | 是 | NULL | 授权用户编号 |
| authorize_user_cn_name | varchar(50) | 是 | NULL | 授权用户中文名称 |
| authorize_user_en_name | varchar(50) | 是 | NULL | 授权用户英文名称 |
| authorize_department_id | varchar(40) | 是 | NULL | 授权用户所属部门编号 |
| authorize_department_cn_name | varchar(200) | 是 | NULL | 授权用户所属部门中文名称 |
| authorize_department_en_name | varchar(200) | 是 | NULL | 授权用户所属部门英文名称 |
| user_id | varchar(50) | 是 | NULL | 被授权用户编号 |
| user_cn_name | varchar(50) | 是 | NULL | 被授权用户中文名称 |
| user_en_name | varchar(50) | 是 | NULL | 被授权用户英文名称 |
| department_id | varchar(50) | 是 | NULL | 被授权用户所属部门编号 |
| department_cn_name | varchar(200) | 是 | NULL | 被授权用户所属部门中文名称 |
| department_en_name | varchar(200) | 是 | NULL | 被授权用户所属部门英文名称 |
| authorize_id | varchar(50) | 是 | NULL | 授权编号(权限编号；角色编号) |
| authorize_cn_name | varchar(200) | 是 | NULL | 授权中文名称 |
| authorize_en_name | varchar(200) | 是 | NULL | 授权英文名称 |
| authorize_begin_datetime | datetime | 是 | NULL | 授权开始时间 |
| authorize_end_datetime | datetime | 是 | NULL | 授权结束时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |


## uc_user_department_mapping
> 用户中心用户部门映射表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(150) | 否 | 无 | 用户部门映射编号(主键) |
| user_id | varchar(50) | 是 | NULL | 用户编号 |
| user_cn_name | varchar(50) | 是 | NULL | 用户中文名称 |
| user_en_name | varchar(50) | 是 | NULL | 用户英文名称 |
| department_id | varchar(50) | 是 | NULL | 部门编号 |
| department_cn_name | varchar(200) | 是 | NULL | 部门中文名称 |
| department_en_name | varchar(200) | 是 | NULL | 部门英文名称 |
| effect_datetime | datetime | 是 | NULL | 生效时间 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |


## uc_user_group_mapping
> 用户中心用户用户组映射表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(150) | 否 | 无 | 用户用户组映射编号(主键) |
| user_id | varchar(50) | 是 | NULL | 用户编号 |
| user_cn_name | varchar(50) | 是 | NULL | 用户中文名称 |
| user_en_name | varchar(50) | 是 | NULL | 用户英文名称 |
| department_id | varchar(50) | 是 | NULL | 部门编号 |
| department_cn_name | varchar(200) | 是 | NULL | 部门中文名称 |
| department_en_name | varchar(200) | 是 | NULL | 部门英文名称 |
| group_id | varchar(50) | 是 | NULL | 用户组编号 |
| group_cn_name | varchar(200) | 是 | NULL | 用户组中文名称 |
| group_en_name | varchar(200) | 是 | NULL | 用户组英文名称 |
| effect_datetime | datetime | 是 | NULL | 生效时间 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |


## uc_user_info
> 用戶基礎信息表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(40) | 否 | 无 | 用户编号(主键) |
| user_app_name | varchar(255) | 是 | NULL | 用户app登录名 |
| user_app_code | varchar(255) | 是 | NULL | 用户app编号 |
| user_type_name | varchar(255) | 是 | NULL | 用户类型名 |
| user_type | varchar(255) | 是 | NULL | 用户类型 |
| user_cn_name | (50) | 是 | NULL | 用户中文名称 |
| user_en_name | (50) | 是 | NULL | 用户英文名称 |
| password | varchar(100) | 是 | NULL | 登录密码 |
| password_question_one | varchar(200) | 是 | NULL | 密码提示问题1 |
| password_answer_one | varchar(200) | 是 | NULL | 密码提示问题1答案 |
| password_question_two | varchar(200) | 是 | NULL | 密码提示问题2 |
| password_answer_two | varchar(200) | 是 | NULL | 密码提示问题2答案 |
| user_phone | varchar(18) | 是 | NULL | 用户电话号码 |
| user_mobile | varchar(18) | 是 | NULL | 用户手机号码 |
| user_address | varchar(200) | 是 | NULL | 用户联系地址 |
| user_email | varchar(60) | 是 | NULL | 用户邮箱 |
| user_flag | varchar(20) | 是 | NULL | 用户标志 |
| status | varchar(5) | 是 | NULL | 用户状态 |
| salt | varchar(30) | 是 | NULL | 加密添加 salt 散列值 |
| fail_count | decimal(65,30) | 是 | NULL | 登录失败次数 |
| illegal_count | decimal(65,30) | 是 | NULL | 非法操作次数 |
| fail_total_count | decimal(65,30) | 是 | NULL | 总登录失败次数 |
| illegal_total_count | decimal(65,30) | 是 | NULL | 总非法操作次数 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| invalid_department_id | varchar(50) | 是 | NULL | 失效用户所属部门编号 |
| invalid_user_id | varchar(50) | 是 | NULL | 失效用户编号 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |
| update_department_id | varchar(50) | 是 | NULL | 更新用户部门所属编号 |
| update_user_id | varchar(50) | 是 | NULL | 更新用户编号 |
| update_datetime | datetime | 是 | NULL | 更新时间 |
| user_gender | varchar(255) | 是 | NULL | 性别 |
| login_name | varchar(255) | 是 | NULL | 登录名 |
| data_center | varchar(255) | 是 | NULL | 数据中心 |
| data_source | varchar(255) | 是 | NULL | 数据来源 |
| center_id | varchar(155) | 是 | NULL | 中心 id |
| center_name | varchar(155) | 是 | NULL | 中心名称 |
| avatar | mediumtext | 是 | NULL |  |
| top_group_center | varchar(256) | 是 | NULL | 顶级用户组即机构 |
| support_id | varchar(255) | 是 | NULL | 审批人id |
| support_name | varchar(255) | 是 | NULL | 审批人名称 |
| user_name | varchar(255) | 是 | NULL | 用户名称 |


## uc_user_privilege_mapping
> 用戶權限映射表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(150) | 否 | 无 | 用户权限映射编号(主键) |
| user_id | varchar(50) | 是 | NULL | 用户编号 |
| user_cn_name | varchar(50) | 是 | NULL | 用户中文名称 |
| user_en_name | varchar(50) | 是 | NULL | 用户英文名称 |
| department_id | varchar(50) | 是 | NULL | 部门编号 |
| department_cn_name | varchar(200) | 是 | NULL | 部门中文名称 |
| department_en_name | varchar(200) | 是 | NULL | 部门英文名称 |
| privilege_id | varchar(50) | 是 | NULL | 权限编号 |
| privilege_cn_name | varchar(200) | 是 | NULL | 权限中文名称 |
| privilege_en_name | varchar(200) | 是 | NULL | 权限英文名称 |
| action_flag | varchar(5) | 是 | NULL | 权限映射方向：“+”正向，“-”反向 |
| effect_datetime | datetime | 是 | NULL | 生效时间 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |


## uc_user_role_mapping
> 用户中心用户角色映射表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(150) | 否 | 无 | 用户角色映射编号(主键) |
| user_id | varchar(50) | 是 | NULL | 用户编号 |
| user_cn_name | varchar(50) | 是 | NULL | 用户中文名称 |
| user_en_name | varchar(50) | 是 | NULL | 用户英文名称 |
| department_id | varchar(50) | 是 | NULL | 部门编号 |
| department_cn_name | varchar(200) | 是 | NULL | 部门中文名称 |
| department_en_name | varchar(200) | 是 | NULL | 部门英文名称 |
| role_id | varchar(50) | 是 | NULL | 角色编号 |
| role_cn_name | varchar(200) | 是 | NULL | 角色中文名称 |
| role_en_name | varchar(200) | 是 | NULL | 角色英文名称 |
| effect_datetime | datetime | 是 | NULL | 生效时间 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |


## uc_user_strategy_mapping
> 用户中心用户策略映射表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(150) | 否 | 无 | 用户角色映射编号(主键) |
| user_id | varchar(50) | 是 | NULL | 用户编号 |
| user_cn_name | varchar(50) | 是 | NULL | 用户中文名称 |
| user_en_name | varchar(50) | 是 | NULL | 用户英文名称 |
| department_id | varchar(50) | 是 | NULL | 部门编号 |
| department_cn_name | varchar(200) | 是 | NULL | 部门中文名称 |
| department_en_name | varchar(200) | 是 | NULL | 部门英文名称 |
| strategy_id | varchar(50) | 是 | NULL | 策略编号 |
| strategy_cn_name | varchar(200) | 是 | NULL | 策略中文名称 |
| strategy_en_name | varchar(200) | 是 | NULL | 策略英文名称 |
| effect_datetime | datetime | 是 | NULL | 生效时间 |
| invalid_datetime | datetime | 是 | NULL | 失效时间 |
| valid_flag | varchar(5) | 是 | NULL | 效力标志 |
| create_department_id | varchar(50) | 是 | NULL | 创建用户所属部门编号 |
| create_user_id | varchar(50) | 是 | NULL | 创建用户编号 |
| create_datetime | datetime | 是 | NULL | 创建时间 |


## user_mo_register

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(255) | 否 | 无 |  (主键) |
| approve_time | varchar(255) | 是 | NULL | 审批时间 |
| create_datetime | varchar(255) | 是 | NULL | 创建时间 |
| login_name | varchar(255) | 是 | NULL | 登录名 |
| support_id | varchar(255) | 是 | NULL | 审批人 id |
| support_name | varchar(255) | 是 | NULL | 审批人名称 |
| user_email | varchar(255) | 是 | NULL | 用户邮箱 |
| user_gender | varchar(255) | 是 | NULL | 性别 |
| user_name | varchar(255) | 是 | NULL | 用户名 |
| user_phone | varchar(255) | 是 | NULL | 联系方式 |


## user_register_info

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(60) | 否 | 无 |  (主键) |
| login_name | varchar(120) | 是 | NULL | 登录名 |
| user_app_name | varchar(120) | 是 | NULL | 用户 app 登录名 |
| user_name | varchar(120) | 是 | NULL | 用户中文名称 |
| user_en_name | varchar(120) | 是 | NULL | 用户英文名称 |
| user_gender | varchar(20) | 是 | NULL | 性别 |
| password | varchar(225) | 是 | NULL | 密码 |
| repassword | varchar(225) | 是 | NULL | 确认密码 |
| salt | varchar(225) | 是 | NULL | 加密字段 |
| user_phone | varchar(60) | 是 | NULL | 用户电话号码 |
| user_mobile | varchar(60) | 是 | NULL | 用户手机号码 |
| user_address | varchar(240) | 是 | NULL | 用户地址 |
| user_email | varchar(60) | 是 | NULL | 邮箱 |
| data_center | varchar(240) | 是 | NULL | 用户所属中心 |
| user_flag | varchar(20) | 是 | NULL | 用户标志 |
| register_status | varchar(20) | 是 | NULL | 0 注册中，1 注册完成 |
| is_registered | varchar(20) | 是 | NULL | 0 注册成功，1 注册失败 |
| register_datetime | datetime | 是 | NULL | 注册时间 |
| user_register_dept_id | varchar(255) | 是 | NULL | 用户注册部门 id |
| password_question_one | varchar(240) | 是 | NULL | 密码提示问题1 |
| password_question_two | varchar(240) | 是 | NULL | 密码提示问题2 |
| password_answer_one | varchar(240) | 是 | NULL | 密码提示问题答案1 |
| password_answer_two | varchar(240) | 是 | NULL | 密码提示问题答案2 |
| channel | varchar(240) | 是 | NULL | 渠道 |
| verif_status | varchar(255) | 是 | NULL | 校验状态 |
| center_id | varchar(155) | 是 | NULL | 中心 id |
| center_name | varchar(155) | 是 | NULL | 中心名称 |


## wf_approve_idea
> 用户常用审批意见表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(60) | 否 | 无 |  (主键) |
| idea | varchar(600) | 是 | NULL | 审批意见 |
| user_id | varchar(60) | 是 | NULL | 用户id |
| user_name | varchar(120) | 是 | NULL | 用户名称 |
| user_dept_id | varchar(60) | 是 | NULL | 用户部门id |
| user_comp_id | varchar(60) | 是 | NULL | 用户公司id |
| user_group_id | varchar(60) | 是 | NULL | 用户组id |
| user_dept_name | varchar(120) | 是 | NULL | 用户部门名称 |
| user_comp_name | varchar(120) | 是 | NULL | 用户公司名称 |
| user_group_name | varchar(120) | 是 | NULL | 用户组名称 |


## wf_definition
> 流程定义表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(60) | 否 | 无 | 流程 id(主键) |
| process_id | varchar(60) | 是 | NULL | 流程实例id |
| name | varchar(240) | 是 | NULL | 流程名称 |
| node_id | varchar(60) | 是 | NULL | 节点id |
| node_name | varchar(240) | 是 | NULL | 节点名称 |
| node_type | varchar(4) | 是 | NULL | 节点类型 |
| next_node_id | varchar(60) | 是 | NULL | 下一节点id |
| next_node_name | varchar(120) | 是 | NULL | 下一节点名称 |
| create_time | varchar(20) | 是 | NULL | 创建时间 |
| create_user_id | varchar(60) | 是 | NULL | 创建人id |
| create_user_name | varchar(120) | 是 | NULL | 创建人名称 |
| approve_id | varchar(60) | 是 | NULL | 审批人id |
| approve_name | varchar(120) | 是 | NULL | 审批人名称 |
| approve_depart_id | varchar(60) | 是 | NULL | 审批人部门id |
| approve_depart_name | varchar(120) | 是 | NULL | 审批人部门名称 |
| approve_comp_id | varchar(60) | 是 | NULL | 审批人公司id |
| approve_comp_name | varchar(120) | 是 | NULL | 审批人公司名称 |


## wf_process_log
> 流程日志表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(60) | 否 | 无 | 日志 id(主键) |
| instance_id | varchar(60) | 是 | NULL | 实例 id |
| process_id | varchar(60) | 是 | NULL | 流程 id |
| process_name | varchar(120) | 是 | NULL | 流程名称 |
| cur_node_id | varchar(60) | 是 | NULL | 当前节点 id |
| cur_node_name | varchar(120) | 是 | NULL | 当前节点名称 |
| next_node_id | varchar(60) | 是 | NULL | 下一级节点 id |
| next_node_name | varchar(120) | 是 | NULL | 下一节点名称 |
| busi_id | varchar(60) | 是 | NULL | 业务 id |
| title | varchar(240) | 是 | NULL | 标题 |
| approve_end_time | varchar(20) | 是 | NULL | 审批结束时间 |
| approve_idea | varchar(600) | 是 | NULL | 审批意见 |
| approve_user_id | varchar(60) | 是 | NULL | 审批人 id |
| approve_user_name | varchar(120) | 是 | NULL | 审批人名称 |
| approve_dept_id | varchar(60) | 是 | NULL | 审批人部门 id |
| approve_dept_name | varchar(120) | 是 | NULL | 审批人部门名称 |
| approve_dept_comp_id | varchar(60) | 是 | NULL | 审批人公司 id |
| approve_group_id | varchar(60) | 是 | NULL | 审批人用户组 id |
| approve_gruop_name | varchar(120) | 是 | NULL | 审批人用户组名称 |
| approve_start_time | varchar(20) | 是 | NULL | 审批开始时间 |
| cur_user_id | varchar(256) | 是 | NULL | 当前节点处理人 id |
| cur_user_name | varchar(120) | 是 | NULL | 当前节点处理人姓名 |


## wf_process_todo
> 流程待办表

| 字段 | 数据类型 | 是否能为空 | 默认值 | 字段说明 |
| -- | -- | -- | -- | -- |
| id | varchar(60) | 否 | 无 | 实例 id(主键) |
| process_id | varchar(60) | 是 | NULL | 流程定义实例 id |
| busi_id | varchar(60) | 是 | NULL | 业务表 id |
| process_name | varchar(240) | 是 | NULL | 流程名称 |
| cur_node_id | varchar(60) | 是 | NULL | 当前节点 id |
| cur_node_name | varchar(120) | 是 | NULL | 当前节点名称 |
| title | varchar(320) | 是 | NULL | 标题 |
| next_node_id | varchar(60) | 是 | NULL | 下一节点 id |
| next_node_name | varchar(240) | 是 | NULL | 下一节点名称 |
| todo_user_id | varchar(256) | 是 | NULL | 待办人 id |
| todo_user_name | varchar(240) | 是 | NULL | 待办人名称 |
| todo_comp_id | varchar(60) | 是 | NULL | 代办人公司 id |
| todo_comp_name | varchar(240) | 是 | NULL | 代办人公司名称 |
| todo_dept_id | varchar(60) | 是 | NULL | 处理人部门 |
| todo_dept_name | varchar(240) | 是 | NULL | 代办人部门名称 |
| create_time | varchar(20) | 是 | NULL | 创建时间 |
| start_user_id | varchar(256) | 是 | NULL | 流程发起人 id |
| start_user_name | varchar(120) | 是 | NULL | 流程发起人姓名 |
