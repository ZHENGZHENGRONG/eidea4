/**
* 版权所有 刘大磊 2013-07-01
* 作者：刘大磊
* 电话：13336390671
* email:ldlqdsd@126.com
*/
package com.dsdl.eidea.base.service;
import com.dsdl.eidea.base.entity.po.FieldPo;
import com.dsdl.eidea.core.dto.PaginationResult;
import com.dsdl.eidea.core.params.QueryParams;
import com.googlecode.genericdao.search.Search;
import java.util.List;

/**
 * @author 刘大磊 2017-05-03 16:49:55
 */
public interface FieldService {
	PaginationResult<FieldPo> getFieldListByPaging(Search search,QueryParams queryParams);
	FieldPo getField(Integer id);
	void saveField(FieldPo field);
	void deletes(Integer[] ids);
}