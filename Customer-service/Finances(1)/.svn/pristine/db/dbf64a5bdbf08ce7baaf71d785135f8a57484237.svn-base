package com.p2p.util;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class PageInfo implements Serializable{
	private final static int PAGESIZE=10; //默认显示的记录数
	
	private int  total ; //总记录数
	
	private List  rows ;//显示的记录
	
	private int from;
	
	private int size;
	
	private int nowpage ;//当前页
	
	private int pagesize ;//每页显示的记录数
	
	private Map<String,Object> condition ;//查询条件
	
	private String sort="seq"; //排序字段
	
	private String orde ="asc"; //关键字
 
	public PageInfo() {
		super();
	}

	public PageInfo(int nowpage ,int pagesize) {
		if(nowpage<0) {
			this.nowpage=1;
		}else {
			this.nowpage=nowpage;
		}
		if(pagesize<0) {
			this.pagesize=PAGESIZE;
		}else {
			this.pagesize=pagesize;
		}
		//计算开始的记录
		this.from=(this.nowpage-1)*this.pagesize;
		//计算结束的记录
		this.size=this.pagesize;
		
	}
	
	public PageInfo(int nowpage ,int pagesize,String sort,String orde) {
		 // 计算当前页  
        if (nowpage < 0) {
            this.nowpage = 1;
        } else {
            // 当前页
            this.nowpage = nowpage;
        }
        // 记录每页显示的记录数  
        if (pagesize < 0) {
            this.pagesize = PAGESIZE;
        } else {
            this.pagesize = pagesize;
        }
     // 计算开始的记录和结束的记录  
        this.from = (this.nowpage - 1) * this.pagesize;
        this.size = this.pagesize;
        //排序字段,正序还是反序
        this.sort=sort;
        this.orde=orde;
	}

	public PageInfo(int total, List rows, int from, int size, int nowpage, int pagesize, Map<String, Object> condition,
			String sort, String orde) {
		super();
		this.total = total;
		this.rows = rows;
		this.from = from;
		this.size = size;
		this.nowpage = nowpage;
		this.pagesize = pagesize;
		this.condition = condition;
		this.sort = sort;
		this.orde = orde;
	}


	public int getTotal() {
		return total;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public List getRows() {
		return rows;
	}


	public void setRows(List rows) {
		this.rows = rows;
	}


	public int getFrom() {
		return from;
	}


	public void setFrom(int from) {
		this.from = from;
	}


	public int getSize() {
		return size;
	}


	public void setSize(int size) {
		this.size = size;
	}


	public int getNowpage() {
		return nowpage;
	}


	public void setNowpage(int nowpage) {
		this.nowpage = nowpage;
	}


	public int getPagesize() {
		return pagesize;
	}


	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}


	public Map<String, Object> getCondition() {
		return condition;
	}


	public void setCondition(Map<String, Object> condition) {
		this.condition = condition;
	}


	public String getSort() {
		return sort;
	}


	public void setSort(String sort) {
		this.sort = sort;
	}


	public String getOrde() {
		return orde;
	}


	public void setOrde(String orde) {
		this.orde = orde;
	}


	
	
	
	
	
	
   
}
