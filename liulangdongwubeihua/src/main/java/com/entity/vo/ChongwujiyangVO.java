package com.entity.vo;

import com.entity.ChongwujiyangEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 宠物寄养
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("chongwujiyang")
public class ChongwujiyangVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 用户
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 宠物名称
     */

    @TableField(value = "chongwu_name")
    private String chongwuName;


    /**
     * 宠物照片
     */

    @TableField(value = "chongwu_photo")
    private String chongwuPhoto;


    /**
     * 宠物类型
     */

    @TableField(value = "chongwu_types")
    private Integer chongwuTypes;


    /**
     * 寄养日期
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "jiyang_riqi_time")
    private Date jiyangRiqiTime;


    /**
     * 寄养天数
     */

    @TableField(value = "jiyang_tianshu")
    private Integer jiyangTianshu;


    /**
     * 寄养地址
     */

    @TableField(value = "jiyangdizhi")
    private String jiyangdizhi;


    /**
     * 联系人姓名
     */

    @TableField(value = "lianxiren_name")
    private String lianxirenName;


    /**
     * 联系人手机号
     */

    @TableField(value = "lianxiren_phone")
    private String lianxirenPhone;


    /**
     * 寄养详情
     */

    @TableField(value = "chongwujiyang_content")
    private String chongwujiyangContent;


    /**
     * 审核状态
     */

    @TableField(value = "chongwujiyang_yesno_types")
    private Integer chongwujiyangYesnoTypes;


    /**
     * 审核意见
     */

    @TableField(value = "chongwujiyang_yesno_text")
    private String chongwujiyangYesnoText;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：宠物名称
	 */
    public String getChongwuName() {
        return chongwuName;
    }


    /**
	 * 获取：宠物名称
	 */

    public void setChongwuName(String chongwuName) {
        this.chongwuName = chongwuName;
    }
    /**
	 * 设置：宠物照片
	 */
    public String getChongwuPhoto() {
        return chongwuPhoto;
    }


    /**
	 * 获取：宠物照片
	 */

    public void setChongwuPhoto(String chongwuPhoto) {
        this.chongwuPhoto = chongwuPhoto;
    }
    /**
	 * 设置：宠物类型
	 */
    public Integer getChongwuTypes() {
        return chongwuTypes;
    }


    /**
	 * 获取：宠物类型
	 */

    public void setChongwuTypes(Integer chongwuTypes) {
        this.chongwuTypes = chongwuTypes;
    }
    /**
	 * 设置：寄养日期
	 */
    public Date getJiyangRiqiTime() {
        return jiyangRiqiTime;
    }


    /**
	 * 获取：寄养日期
	 */

    public void setJiyangRiqiTime(Date jiyangRiqiTime) {
        this.jiyangRiqiTime = jiyangRiqiTime;
    }
    /**
	 * 设置：寄养天数
	 */
    public Integer getJiyangTianshu() {
        return jiyangTianshu;
    }


    /**
	 * 获取：寄养天数
	 */

    public void setJiyangTianshu(Integer jiyangTianshu) {
        this.jiyangTianshu = jiyangTianshu;
    }
    /**
	 * 设置：寄养地址
	 */
    public String getJiyangdizhi() {
        return jiyangdizhi;
    }


    /**
	 * 获取：寄养地址
	 */

    public void setJiyangdizhi(String jiyangdizhi) {
        this.jiyangdizhi = jiyangdizhi;
    }
    /**
	 * 设置：联系人姓名
	 */
    public String getLianxirenName() {
        return lianxirenName;
    }


    /**
	 * 获取：联系人姓名
	 */

    public void setLianxirenName(String lianxirenName) {
        this.lianxirenName = lianxirenName;
    }
    /**
	 * 设置：联系人手机号
	 */
    public String getLianxirenPhone() {
        return lianxirenPhone;
    }


    /**
	 * 获取：联系人手机号
	 */

    public void setLianxirenPhone(String lianxirenPhone) {
        this.lianxirenPhone = lianxirenPhone;
    }
    /**
	 * 设置：寄养详情
	 */
    public String getChongwujiyangContent() {
        return chongwujiyangContent;
    }


    /**
	 * 获取：寄养详情
	 */

    public void setChongwujiyangContent(String chongwujiyangContent) {
        this.chongwujiyangContent = chongwujiyangContent;
    }
    /**
	 * 设置：审核状态
	 */
    public Integer getChongwujiyangYesnoTypes() {
        return chongwujiyangYesnoTypes;
    }


    /**
	 * 获取：审核状态
	 */

    public void setChongwujiyangYesnoTypes(Integer chongwujiyangYesnoTypes) {
        this.chongwujiyangYesnoTypes = chongwujiyangYesnoTypes;
    }
    /**
	 * 设置：审核意见
	 */
    public String getChongwujiyangYesnoText() {
        return chongwujiyangYesnoText;
    }


    /**
	 * 获取：审核意见
	 */

    public void setChongwujiyangYesnoText(String chongwujiyangYesnoText) {
        this.chongwujiyangYesnoText = chongwujiyangYesnoText;
    }
    /**
	 * 设置：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：添加时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
