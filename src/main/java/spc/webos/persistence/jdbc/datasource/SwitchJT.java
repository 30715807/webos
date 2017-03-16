package spc.webos.persistence.jdbc.datasource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import spc.webos.persistence.IPersistence;

/**
 * ���ڳ�����ʾͨ���л�jdbctemplate���л�����Դ
 * 
 * @author chenjs
 *
 */
public class SwitchJT implements AutoCloseable
{
	protected Logger log = LoggerFactory.getLogger(getClass());
	String jt;
	String oldJT;

	public SwitchJT(String jt)
	{
		this.jt = jt;
		oldJT = IPersistence.CURRENT_JT.get();
		IPersistence.CURRENT_JT.set(jt);
		log.info("JT routing:{}, old:{}", jt, oldJT);
	}

	@Override
	public void close()
	{
		IPersistence.CURRENT_JT.set(oldJT);
		log.info("JT remove:{}, old:{}", jt, oldJT);
	}
}
