.class public Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;
.super Ljava/lang/Object;
.source "StreamSpecification.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private streamEnabled:Ljava/lang/Boolean;

.field private streamViewType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 712
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    if-nez v2, :cond_2

    return v1

    .line 714
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    .line 716
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 718
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 719
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 721
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_3

    :cond_8
    move v3, v1

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 723
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 724
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getStreamEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->streamEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStreamViewType()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->streamViewType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 699
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v2, v0

    .line 701
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public isStreamEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->streamEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setStreamEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->streamEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setStreamViewType(Lcom/amazonaws/services/dynamodbv2/model/StreamViewType;)V
    .locals 0

    .line 563
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamViewType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->streamViewType:Ljava/lang/String;

    return-void
.end method

.method public setStreamViewType(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->streamViewType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StreamEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StreamViewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->getStreamViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withStreamEnabled(Ljava/lang/Boolean;)Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->streamEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withStreamViewType(Lcom/amazonaws/services/dynamodbv2/model/StreamViewType;)Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;
    .locals 0

    .line 670
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/StreamViewType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->streamViewType:Ljava/lang/String;

    return-object p0
.end method

.method public withStreamViewType(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->streamViewType:Ljava/lang/String;

    return-object p0
.end method
