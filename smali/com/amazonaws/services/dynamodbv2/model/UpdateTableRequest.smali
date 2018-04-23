.class public Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "UpdateTableRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attributeDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private globalSecondaryIndexUpdates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

.field private streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 173
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->setTableName(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V

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

    .line 856
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;

    if-nez v2, :cond_2

    return v1

    .line 858
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;

    .line 860
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

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

    .line 862
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 863
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 865
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

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

    .line 867
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 868
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 870
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_5

    :cond_c
    move v3, v1

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 872
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 873
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 875
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    .line 876
    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_10

    move v3, v0

    goto :goto_7

    :cond_10
    move v3, v1

    :goto_7
    xor-int/2addr v2, v3

    if-eqz v2, :cond_11

    return v1

    .line 878
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 879
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v2

    .line 880
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v3

    .line 879
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 882
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v3

    if-nez v3, :cond_14

    move v3, v0

    goto :goto_9

    :cond_14
    move v3, v1

    :goto_9
    xor-int/2addr v2, v3

    if-eqz v2, :cond_15

    return v1

    .line 884
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 885
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getAttributeDefinitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->attributeDefinitions:Ljava/util/List;

    return-object v0
.end method

.method public getGlobalSecondaryIndexUpdates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;",
            ">;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->globalSecondaryIndexUpdates:Ljava/util/List;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-object v0
.end method

.method public getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 835
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 836
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 839
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 842
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    .line 843
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 845
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    return v2
.end method

.method public setAttributeDefinitions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->attributeDefinitions:Ljava/util/List;

    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->attributeDefinitions:Ljava/util/List;

    return-void
.end method

.method public setGlobalSecondaryIndexUpdates(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 556
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->globalSecondaryIndexUpdates:Ljava/util/List;

    return-void

    .line 560
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->globalSecondaryIndexUpdates:Ljava/util/List;

    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-void
.end method

.method public setStreamSpecification(Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 814
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeDefinitions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalSecondaryIndexUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StreamSpecification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v1, "}"

    .line 825
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributeDefinitions(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->setAttributeDefinitions(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAttributeDefinitions([Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;
    .locals 4

    .line 243
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->attributeDefinitions:Ljava/util/List;

    .line 247
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 248
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withGlobalSecondaryIndexUpdates(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;"
        }
    .end annotation

    .line 710
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->setGlobalSecondaryIndexUpdates(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGlobalSecondaryIndexUpdates([Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexUpdate;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;
    .locals 4

    .line 632
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->getGlobalSecondaryIndexUpdates()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->globalSecondaryIndexUpdates:Ljava/util/List;

    .line 636
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 637
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->globalSecondaryIndexUpdates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-object p0
.end method

.method public withStreamSpecification(Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/UpdateTableRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method
