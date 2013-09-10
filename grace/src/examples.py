from GracePlot import *
import math
import random

"""
    Examples copied from graceplot documentation.
"""


def example1():
    p = GracePlot() # A grace session opens

    x=[1,2,3,4,5,6,7,8,9,10]
    y=[1,2,3,4,5,6,7,8,9,10]

    s1=Symbol(symbol=symbols.circle,fillcolor=colors.red)
    l1=Line(type=lines.none)

    d1=Data(x=x,y=y,symbol=s1,line=l1)

    g=p[0]

    g.plot(d1)

    g.text('test',.51,.51,color=2)

    g.title('Graph Title')

    g.yaxis(label=Label('Interesting Ydata',font=2,charsize=1.5))

    g.xaxis(label=Label('X axis',font=5,charsize=1.5))

    return 0


def example2():
    p = GracePlot() # A grace session opens

    l1=Line(type=lines.none)


    x1=map(lambda x:x/10.,range(0,100))
    y1=map(math.sin,x1)
    y2=map(math.cos,x1)

    d2=Data(x=x1,y=y1,symbol=Symbol(symbol=symbols.circle,fillcolor=colors.red),line=l1)
    d3=Data(x=x1,y=y2,symbol=Symbol(symbol=symbols.circle,fillcolor=colors.blue),line=l1)

    g=p[0]

    g.plot([d2,d3])

    g.xaxis(label=Label('X axis',font=5,charsize=1.5),tick=Tick(majorgrid=True,majorlinestyle=lines.dashed,majorcolor=colors.blue,minorgrid=True,minorlinestyle=lines.dotted,minorcolor=colors.blue))
    g.yaxis(tick=Tick(majorgrid=True,majorlinestyle=lines.dashed,majorcolor=colors.blue,minorgrid=True,minorlinestyle=lines.dotted,minorcolor=colors.blue))
    
    return 0


def example3():
    p = GracePlot(width=8, height=6) # A grace session opens

    x=[1,2,3,4,5,6,7,8,9,10]
    y=[1,2,3,4,5,6,7,8,9,10]
    labels=['pt1','pt2','Iridium','Na','Ti','hydrogen','Mo '+format_scientific("1.23e3") ,'Ta','pokemon','digital']

    dy=map(lambda x:random.random()*2.,x)

    s1=Symbol(symbol=symbols.square,fillcolor=colors.cyan)
    l1=Line(type=lines.none)

    d1=DataXYDY(x=x,y=y,dy=dy,symbol=s1,line=l1)

    g=p[0]
    g.xaxis(xmin=0, xmax=12)
    g.yaxis(ymin=0, ymax=12)

    g.plot(d1, autoscale=False)

    for i in range(len(labels)):
        g.text('  '+labels[i],x[i],y[i],color=colors.violet,charsize=1.2)

        g.line(x1=3, y1=1, x2=8, y2=2, linewidth=3, color=colors.green4)
    return 0