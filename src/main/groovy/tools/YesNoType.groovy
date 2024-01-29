package tools

import org.hibernate.engine.spi.SharedSessionContractImplementor

import java.io.Serializable
import java.sql.PreparedStatement
import java.sql.ResultSet
import java.sql.SQLException
import java.sql.Types

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.usertype.UserType;

class YesNoType implements UserType {

    @Override
    Object nullSafeGet(ResultSet rs, String[] names, SharedSessionContractImplementor session, Object owner) throws HibernateException, SQLException {
        String value = rs.getString(names[0])
        value == null ? false : (value == 'Y' ? true : false)
    }

    @Override
    void nullSafeSet(PreparedStatement st, Object value, int index, SharedSessionContractImplementor session) throws HibernateException, SQLException {
        if (value) {
            st.setString(index, "Y")
        } else {
            st.setString(index, "N")
        }
    }

    Class<Boolean> returnedClass() { Boolean }

    int[] sqlTypes() { [Types.CHAR] as int[] }

    Object assemble(Serializable cached, Object owner) { cached }

    Object deepCopy(Object value) { new Boolean(value) }

    Serializable disassemble(Object value) { value }

    boolean equals(Object x, Object y) { x == y }

    int hashCode(Object x) { x.hashCode() }

    boolean isMutable() { true }

    Object replace(Object original, Object target, Object owner) { original }

    /*

    @Override
    public Object assemble(Serializable arg0, Object arg1)
            throws HibernateException {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Object deepCopy(Object arg0) throws HibernateException {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Serializable disassemble(Object arg0) throws HibernateException {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public boolean equals(Object arg0, Object arg1) throws HibernateException {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public int hashCode(Object arg0) throws HibernateException {
        // TODO Auto-generated method stub
        return 0;
    }

    @Override
    public boolean isMutable() {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public Object nullSafeGet(ResultSet arg0, String[] arg1,
            SessionImplementor arg2, Object arg3) throws HibernateException,
            SQLException {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void nullSafeSet(PreparedStatement arg0, Object arg1, int arg2,
            SessionImplementor arg3) throws HibernateException, SQLException {
        // TODO Auto-generated method stub

    }

    @Override
    public Object replace(Object arg0, Object arg1, Object arg2)
            throws HibernateException {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Class returnedClass() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public int[] sqlTypes() {
        // TODO Auto-generated method stub
        return null;
    }

    */

}
