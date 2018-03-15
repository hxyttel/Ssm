package com.p2p.base;

import java.io.Serializable;
import java.util.List;

public interface IBaseDao <PK extends Serializable,T>{

	List<T> list();
	void add(T t);
	void delete(PK id);
	void update(T t);
	T getById(PK id);
}
