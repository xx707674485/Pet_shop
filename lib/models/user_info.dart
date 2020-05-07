 /// @Author: yangxichuan
 /// @Date: 2020-04-02 18:17:44
 /// @LastEditTime: 2020-04-07 16:59:09
 /// @LastEditors: yangxichuan
 /// @Description: 用户模型
 
class UserInfo {
  String id;
  String username;
  String realname;
  String avatar;
  String birthday;
  int sex;
  String email;
  String phone;
  String orgCode;
  int status;
  String delFlag;
  String workNo;
  String post;
  String telephone;
  String createBy;
  String createTime;
  String updateBy;
  String updateTime;
  String activitiSync;
  int identity;
  String departIds;
  String unitId;
  String sysOrgCode;
  String sysOrgName;

  UserInfo(
      {this.id,
      this.username,
      this.realname,
      this.avatar,
      this.birthday,
      this.sex,
      this.email,
      this.phone,
      this.orgCode,
      this.status,
      this.delFlag,
      this.workNo,
      this.post,
      this.telephone,
      this.createBy,
      this.createTime,
      this.updateBy,
      this.updateTime,
      this.activitiSync,
      this.identity,
      this.departIds,
      this.unitId,
      this.sysOrgCode,
      this.sysOrgName});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    realname = json['realname'];
    avatar = json['avatar'];
    birthday = json['birthday'];
    sex = json['sex'];
    email = json['email'];
    phone = json['phone'];
    orgCode = json['orgCode'];
    status = json['status'];
    delFlag = json['delFlag'];
    workNo = json['workNo'];
    post = json['post'];
    telephone = json['telephone'];
    createBy = json['createBy'];
    createTime = json['createTime'];
    updateBy = json['updateBy'];
    updateTime = json['updateTime'];
    activitiSync = json['activitiSync'];
    identity = json['identity'];
    departIds = json['departIds'];
    unitId = json['unitId'];
    sysOrgCode = json['sysOrgCode'];
    sysOrgName = json['sysOrgName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['realname'] = this.realname;
    data['avatar'] = this.avatar;
    data['birthday'] = this.birthday;
    data['sex'] = this.sex;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['orgCode'] = this.orgCode;
    data['status'] = this.status;
    data['delFlag'] = this.delFlag;
    data['workNo'] = this.workNo;
    data['post'] = this.post;
    data['telephone'] = this.telephone;
    data['createBy'] = this.createBy;
    data['createTime'] = this.createTime;
    data['updateBy'] = this.updateBy;
    data['updateTime'] = this.updateTime;
    data['activitiSync'] = this.activitiSync;
    data['identity'] = this.identity;
    data['departIds'] = this.departIds;
    data['unitId'] = this.unitId;
    data['sysOrgCode'] = this.sysOrgCode;
    data['sysOrgName'] = this.sysOrgName;
    return data;
  }
}