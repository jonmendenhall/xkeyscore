.class Lcom/amazonaws/util/TimingInfoFullSupport;
.super Lcom/amazonaws/util/TimingInfo;
.source "TimingInfoFullSupport.java"


# instance fields
.field private final countersByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private final subMeasurementsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->subMeasurementsByName:Ljava/util/Map;

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->countersByName:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addSubMeasurement(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/util/TimingInfo;->isEndTimeKnown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip submeasurement timing info with no end time for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getAllCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->countersByName:Ljava/util/Map;

    return-object v0
.end method

.method public getAllSubMeasurements(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getCounter(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->countersByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    return-object p1
.end method

.method public getLastSubMeasurement(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->subMeasurementsByName:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/util/TimingInfo;

    return-object p1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getSubMeasurement(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/util/TimingInfoFullSupport;->getSubMeasurement(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSubMeasurement(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->subMeasurementsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-ltz p2, :cond_1

    if-eqz p1, :cond_1

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/util/TimingInfo;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSubMeasurementsByName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/util/TimingInfo;",
            ">;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->subMeasurementsByName:Ljava/util/Map;

    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 2

    .line 130
    invoke-virtual {p0, p1}, Lcom/amazonaws/util/TimingInfoFullSupport;->getCounter(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 136
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/util/TimingInfoFullSupport;->setCounter(Ljava/lang/String;J)V

    return-void
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazonaws/util/TimingInfoFullSupport;->countersByName:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
