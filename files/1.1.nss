<!DOCTYPE nsscheme>
<nsscheme type="sequence">
  <position>
    <x>4</x>
    <y>30</y>
  </position>
  <size>
    <width>756</width>
    <height>537</height>
  </size>
  <name>1.1</name>
  <comment></comment>
  <author></author>
  <pascalCode contains="yes"/>
  <checkSyntax enabled="yes"/>
  <variables>
    <variable>
      <name>O</name>
      <type>
        <double/>
      </type>
      <value>525</value>
    </variable>
    <variable>
      <name>P</name>
      <type>
        <double/>
      </type>
      <value>315</value>
    </variable>
    <variable>
      <name>R</name>
      <type>
        <double/>
      </type>
      <value>5</value>
    </variable>
    <variable>
      <name>a</name>
      <type>
        <double/>
      </type>
      <value>3</value>
    </variable>
    <variable>
      <name>b</name>
      <type>
        <double/>
      </type>
      <value>4</value>
    </variable>
    <variable>
      <name>c</name>
      <type>
        <double/>
      </type>
      <value>5</value>
    </variable>
    <variable>
      <name>h</name>
      <type>
        <double/>
      </type>
      <value>9.3461e-307</value>
    </variable>
  </variables>
  <sequence>
    <outputinstruction>
      <text>'Podaj a, b , c, R oraz h'</text>
      <comment></comment>
    </outputinstruction>
    <inputinstruction>
      <text>a</text>
      <comment></comment>
    </inputinstruction>
    <inputinstruction>
      <text>b</text>
      <comment></comment>
    </inputinstruction>
    <inputinstruction>
      <text>c</text>
      <comment></comment>
    </inputinstruction>
    <inputinstruction>
      <text>R</text>
      <comment></comment>
    </inputinstruction>
    <inputinstruction>
      <text>h</text>
      <comment></comment>
    </inputinstruction>
    <simpleinstruction>
      <text>O:=a*a*a</text>
      <comment></comment>
    </simpleinstruction>
    <simpleinstruction>
      <text>P:=6*a*a</text>
      <comment></comment>
    </simpleinstruction>
    <outputinstruction>
      <text>'Objetość sześcianu', O</text>
      <comment></comment>
    </outputinstruction>
    <outputinstruction>
      <text>'Pole powierzchni sześcianu: ', P</text>
      <comment></comment>
    </outputinstruction>
    <simpleinstruction>
      <text>O:=a*b*c</text>
      <comment></comment>
    </simpleinstruction>
    <simpleinstruction>
      <text>P:=(a*b*2)+(a*c*2)+(b*c*2)</text>
      <comment></comment>
    </simpleinstruction>
    <outputinstruction>
      <text>'Objetość prostopadłościanu: ', O</text>
      <comment></comment>
    </outputinstruction>
    <outputinstruction>
      <text>'Pole powierzchni prostopadłościanu: ', P</text>
      <comment></comment>
    </outputinstruction>
    <simpleinstruction>
      <text>O:=4.2*R*R*R</text>
      <comment></comment>
    </simpleinstruction>
    <simpleinstruction>
      <text>P:=12.6*R*R</text>
      <comment></comment>
    </simpleinstruction>
    <outputinstruction>
      <text>'Objetość kuli: ', O</text>
      <comment></comment>
    </outputinstruction>
    <outputinstruction>
      <text>'Pole powierzchni kuli: ', P</text>
      <comment></comment>
    </outputinstruction>
    <simpleinstruction>
      <text>O:=3.14*R*R*h</text>
      <comment></comment>
    </simpleinstruction>
    <simpleinstruction>
      <text>P:=6.28*R*(R+h)</text>
      <comment></comment>
    </simpleinstruction>
    <outputinstruction>
      <text>'Objetość walca: ', O</text>
      <comment></comment>
    </outputinstruction>
    <outputinstruction>
      <text>'Pole powierzchni walca: ', P</text>
      <comment></comment>
    </outputinstruction>
  </sequence>
</nsscheme>
