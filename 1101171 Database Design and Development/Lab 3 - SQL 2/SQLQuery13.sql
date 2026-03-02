ALTER TABLE employee ADD CONSTRAINT depno_fk FOREIGN KEY (depno) REFERENCES dep (depno);
ALTER TABLE projwork ADD CONSTRAINT projno_fk FOREIGN KEY (projno) REFERENCES project (projno);
ALTER TABLE projwork ADD CONSTRAINT empnum_fk FOREIGN KEY (empnum) REFERENCES employee (empnum);