.class public Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "CreateTableRequest.java"

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

.field private globalSecondaryIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;",
            ">;"
        }
    .end annotation
.end field

.field private keySchema:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;"
        }
    .end annotation
.end field

.field private localSecondaryIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;",
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

    .line 352
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;)V"
        }
    .end annotation

    .line 432
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 433
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setTableName(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setKeySchema(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;",
            "Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;",
            ")V"
        }
    .end annotation

    .line 531
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 532
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setAttributeDefinitions(Ljava/util/Collection;)V

    .line 533
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setTableName(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setKeySchema(Ljava/util/Collection;)V

    .line 535
    invoke-virtual {p0, p4}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V

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

    .line 2970
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;

    if-nez v2, :cond_2

    return v1

    .line 2972
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;

    .line 2974
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

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

    .line 2976
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2977
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 2979
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getTableName()Ljava/lang/String;

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

    .line 2981
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2982
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 2984
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

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

    .line 2986
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2987
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 2989
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

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

    .line 2991
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 2992
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 2994
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

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

    .line 2996
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 2997
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 2999
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    if-nez v3, :cond_18

    move v3, v0

    goto :goto_b

    :cond_18
    move v3, v1

    :goto_b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v1

    .line 3001
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 3002
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 3004
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v3

    if-nez v3, :cond_1c

    move v3, v0

    goto :goto_d

    :cond_1c
    move v3, v1

    :goto_d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d

    return v1

    .line 3006
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 3007
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    return v1

    :cond_1e
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

    .line 550
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->attributeDefinitions:Ljava/util/List;

    return-object v0
.end method

.method public getGlobalSecondaryIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;",
            ">;"
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->globalSecondaryIndexes:Ljava/util/List;

    return-object v0
.end method

.method public getKeySchema()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;"
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->keySchema:Ljava/util/List;

    return-object v0
.end method

.method public getLocalSecondaryIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;",
            ">;"
        }
    .end annotation

    .line 1401
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->localSecondaryIndexes:Ljava/util/List;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;
    .locals 1

    .line 2544
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-object v0
.end method

.method public getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;
    .locals 1

    .line 2705
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 2945
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 2946
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 2947
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 2950
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 2953
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    .line 2954
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 2957
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 2959
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->hashCode()I

    move-result v1

    :goto_6
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

    .line 567
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->attributeDefinitions:Ljava/util/List;

    return-void

    .line 571
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->attributeDefinitions:Ljava/util/List;

    return-void
.end method

.method public setGlobalSecondaryIndexes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2186
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->globalSecondaryIndexes:Ljava/util/List;

    return-void

    .line 2190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->globalSecondaryIndexes:Ljava/util/List;

    return-void
.end method

.method public setKeySchema(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 954
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->keySchema:Ljava/util/List;

    return-void

    .line 958
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->keySchema:Ljava/util/List;

    return-void
.end method

.method public setLocalSecondaryIndexes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1554
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->localSecondaryIndexes:Ljava/util/List;

    return-void

    .line 1558
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->localSecondaryIndexes:Ljava/util/List;

    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)V
    .locals 0

    .line 2573
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-void
.end method

.method public setStreamSpecification(Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;)V
    .locals 0

    .line 2803
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->tableName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 2920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeDefinitions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2923
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySchema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalSecondaryIndexes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2929
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalSecondaryIndexes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2931
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StreamSpecification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v1, "}"

    .line 2935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributeDefinitions(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;"
        }
    .end annotation

    .line 620
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setAttributeDefinitions(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAttributeDefinitions([Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 4

    .line 592
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->attributeDefinitions:Ljava/util/List;

    .line 596
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 597
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withGlobalSecondaryIndexes(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;"
        }
    .end annotation

    .line 2514
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setGlobalSecondaryIndexes(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGlobalSecondaryIndexes([Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndex;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 4

    .line 2349
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2350
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->globalSecondaryIndexes:Ljava/util/List;

    .line 2353
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2354
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->globalSecondaryIndexes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withKeySchema(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;"
        }
    .end annotation

    .line 1252
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setKeySchema(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withKeySchema([Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 4

    .line 1102
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getKeySchema()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1103
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->keySchema:Ljava/util/List;

    .line 1105
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1106
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->keySchema:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withLocalSecondaryIndexes(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;"
        }
    .end annotation

    .line 1880
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->setLocalSecondaryIndexes(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withLocalSecondaryIndexes([Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndex;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 4

    .line 1716
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1717
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->localSecondaryIndexes:Ljava/util/List;

    .line 1720
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1721
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->localSecondaryIndexes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 0

    .line 2607
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughput;

    return-object p0
.end method

.method public withStreamSpecification(Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 0

    .line 2906
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;
    .locals 0

    .line 677
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/CreateTableRequest;->tableName:Ljava/lang/String;

    return-object p0
.end method
