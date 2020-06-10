package com.trica.dao;

import java.util.HashMap;
import java.util.List;

public interface ChartDAO {
	public List<HashMap> getCountPerDay();
	public List<HashMap> getCountPerCate();
	public List<HashMap> getSalesPerDay();
}
