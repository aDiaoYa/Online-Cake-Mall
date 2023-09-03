package com.aDiao.entity;

import java.util.List;

//分页实体类
public class Page {

//    当前页数
    private int pageNumber;
//    每一页显示数据数
    private int pageSize;
//    总记录数
    private int totalCount;
//    总页数
    private int totalPage;
    private List<Object> list;

    public void setPageSizeAndTotalCount(int pageSize,int totalCount) {
//        每页显示数据数  总记录数
        this.pageSize = pageSize;
        this.totalCount = totalCount;
       totalPage = (int) Math.ceil((double)totalCount/pageSize);
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<Object> getList() {
        return list;
    }

    public void setList(List<Object> list) {
        this.list = list;
    }

    public Page(int pageNumber, int pageSize, int totalCount, int totalPage, List<Object> list) {
        this.pageNumber = pageNumber;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
        this.totalPage = totalPage;
        this.list = list;
    }

    public Page() {
        super();
    }

    @Override
    public String toString() {
        return "Page{" +
                "pageNumber=" + pageNumber +
                ", pageSize=" + pageSize +
                ", totalCount=" + totalCount +
                ", totalPage=" + totalPage +
                ", list=" + list +
                '}';
    }
}
