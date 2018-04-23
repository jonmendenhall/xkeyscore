.class public Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
.super Ljava/lang/Object;
.source "TableDescription.java"

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

.field private creationDateTime:Ljava/util/Date;

.field private globalSecondaryIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;",
            ">;"
        }
    .end annotation
.end field

.field private itemCount:Ljava/lang/Long;

.field private keySchema:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;"
        }
    .end annotation
.end field

.field private latestStreamArn:Ljava/lang/String;

.field private latestStreamLabel:Ljava/lang/String;

.field private localSecondaryIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;",
            ">;"
        }
    .end annotation
.end field

.field private provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

.field private streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

.field private tableArn:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private tableSizeBytes:Ljava/lang/Long;

.field private tableStatus:Ljava/lang/String;


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

    .line 3949
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;

    if-nez v2, :cond_2

    return v1

    .line 3951
    :cond_2
    check-cast p1, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;

    .line 3953
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

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

    .line 3955
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3956
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 3958
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

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

    .line 3960
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 3961
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 3963
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

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

    .line 3965
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 3966
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 3968
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_6

    :cond_f
    move v2, v1

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

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

    .line 3970
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 3971
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 3973
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_13

    move v2, v0

    goto :goto_8

    :cond_13
    move v2, v1

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

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

    .line 3975
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 3976
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 3978
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v2

    if-nez v2, :cond_17

    move v2, v0

    goto :goto_a

    :cond_17
    move v2, v1

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

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

    .line 3980
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 3981
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 3983
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1b

    move v2, v0

    goto :goto_c

    :cond_1b
    move v2, v1

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

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

    .line 3985
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 3986
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 3988
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1f

    move v2, v0

    goto :goto_e

    :cond_1f
    move v2, v1

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_20

    move v3, v0

    goto :goto_f

    :cond_20
    move v3, v1

    :goto_f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_21

    return v1

    .line 3990
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 3991
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 3993
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    move v2, v0

    goto :goto_10

    :cond_23
    move v2, v1

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24

    move v3, v0

    goto :goto_11

    :cond_24
    move v3, v1

    :goto_11
    xor-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    .line 3995
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 3997
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_27

    move v2, v0

    goto :goto_12

    :cond_27
    move v2, v1

    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_28

    move v3, v0

    goto :goto_13

    :cond_28
    move v3, v1

    :goto_13
    xor-int/2addr v2, v3

    if-eqz v2, :cond_29

    return v1

    .line 3999
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 4000
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    return v1

    .line 4002
    :cond_2a
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2b

    move v2, v0

    goto :goto_14

    :cond_2b
    move v2, v1

    :goto_14
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2c

    move v3, v0

    goto :goto_15

    :cond_2c
    move v3, v1

    :goto_15
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2d

    return v1

    .line 4004
    :cond_2d
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 4005
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    return v1

    .line 4007
    :cond_2e
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    if-nez v2, :cond_2f

    move v2, v0

    goto :goto_16

    :cond_2f
    move v2, v1

    :goto_16
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v3

    if-nez v3, :cond_30

    move v3, v0

    goto :goto_17

    :cond_30
    move v3, v1

    :goto_17
    xor-int/2addr v2, v3

    if-eqz v2, :cond_31

    return v1

    .line 4009
    :cond_31
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 4010
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    return v1

    .line 4012
    :cond_32
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    move v2, v0

    goto :goto_18

    :cond_33
    move v2, v1

    :goto_18
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    move v3, v0

    goto :goto_19

    :cond_34
    move v3, v1

    :goto_19
    xor-int/2addr v2, v3

    if-eqz v2, :cond_35

    return v1

    .line 4014
    :cond_35
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 4015
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    return v1

    .line 4017
    :cond_36
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_37

    move v2, v0

    goto :goto_1a

    :cond_37
    move v2, v1

    :goto_1a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_38

    move v3, v0

    goto :goto_1b

    :cond_38
    move v3, v1

    :goto_1b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_39

    return v1

    .line 4019
    :cond_39
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 4020
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    return v1

    :cond_3a
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

    .line 494
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->attributeDefinitions:Ljava/util/List;

    return-object v0
.end method

.method public getCreationDateTime()Ljava/util/Date;
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->creationDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getGlobalSecondaryIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;",
            ">;"
        }
    .end annotation

    .line 2745
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->globalSecondaryIndexes:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()Ljava/lang/Long;
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->itemCount:Ljava/lang/Long;

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

    .line 817
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->keySchema:Ljava/util/List;

    return-object v0
.end method

.method public getLatestStreamArn()Ljava/lang/String;
    .locals 1

    .line 3818
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->latestStreamArn:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestStreamLabel()Ljava/lang/String;
    .locals 1

    .line 3674
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->latestStreamLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalSecondaryIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;",
            ">;"
        }
    .end annotation

    .line 1908
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->localSecondaryIndexes:Ljava/util/List;

    return-object v0
.end method

.method public getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    return-object v0
.end method

.method public getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;
    .locals 1

    .line 3583
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    return-object v0
.end method

.method public getTableArn()Ljava/lang/String;
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableArn:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableSizeBytes()Ljava/lang/Long;
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableSizeBytes:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableStatus()Ljava/lang/String;
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 3912
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 3913
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3914
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3916
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3918
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3921
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3923
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3924
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3925
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3928
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3931
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v3

    .line 3932
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3934
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v3

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3936
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 3938
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
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

    .line 543
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->attributeDefinitions:Ljava/util/List;

    return-void

    .line 547
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->attributeDefinitions:Ljava/util/List;

    return-void
.end method

.method public setCreationDateTime(Ljava/util/Date;)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->creationDateTime:Ljava/util/Date;

    return-void
.end method

.method public setGlobalSecondaryIndexes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3013
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->globalSecondaryIndexes:Ljava/util/List;

    return-void

    .line 3017
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->globalSecondaryIndexes:Ljava/util/List;

    return-void
.end method

.method public setItemCount(Ljava/lang/Long;)V
    .locals 0

    .line 1658
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->itemCount:Ljava/lang/Long;

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

    .line 919
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->keySchema:Ljava/util/List;

    return-void

    .line 923
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->keySchema:Ljava/util/List;

    return-void
.end method

.method public setLatestStreamArn(Ljava/lang/String;)V
    .locals 0

    .line 3836
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->latestStreamArn:Ljava/lang/String;

    return-void
.end method

.method public setLatestStreamLabel(Ljava/lang/String;)V
    .locals 0

    .line 3734
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->latestStreamLabel:Ljava/lang/String;

    return-void
.end method

.method public setLocalSecondaryIndexes(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2092
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->localSecondaryIndexes:Ljava/util/List;

    return-void

    .line 2096
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->localSecondaryIndexes:Ljava/util/List;

    return-void
.end method

.method public setProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;)V
    .locals 0

    .line 1544
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    return-void
.end method

.method public setStreamSpecification(Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;)V
    .locals 0

    .line 3596
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    return-void
.end method

.method public setTableArn(Ljava/lang/String;)V
    .locals 0

    .line 1709
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableArn:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setTableSizeBytes(Ljava/lang/Long;)V
    .locals 0

    .line 1601
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableSizeBytes:Ljava/lang/Long;

    return-void
.end method

.method public setTableStatus(Lcom/amazonaws/services/dynamodbv2/model/TableStatus;)V
    .locals 0

    .line 1392
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableStatus;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-void
.end method

.method public setTableStatus(Ljava/lang/String;)V
    .locals 0

    .line 1264
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 3873
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3874
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttributeDefinitions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3876
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3878
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySchema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3880
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3882
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreationDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getCreationDateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionedThroughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getProvisionedThroughput()Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3886
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableSizeBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableSizeBytes()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3888
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getItemCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3890
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getTableArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3892
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalSecondaryIndexes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3894
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalSecondaryIndexes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3896
    :cond_a
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StreamSpecification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getStreamSpecification()Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3898
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 3899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LatestStreamLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3900
    :cond_c
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 3901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LatestStreamArn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLatestStreamArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string/jumbo v1, "}"

    .line 3902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3903
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAttributeDefinitions(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/TableDescription;"
        }
    .end annotation

    .line 660
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->setAttributeDefinitions(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withAttributeDefinitions([Lcom/amazonaws/services/dynamodbv2/model/AttributeDefinition;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 4

    .line 600
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getAttributeDefinitions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->attributeDefinitions:Ljava/util/List;

    .line 604
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 605
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withCreationDateTime(Ljava/util/Date;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 1511
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->creationDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public withGlobalSecondaryIndexes(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/TableDescription;"
        }
    .end annotation

    .line 3569
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->setGlobalSecondaryIndexes(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGlobalSecondaryIndexes([Lcom/amazonaws/services/dynamodbv2/model/GlobalSecondaryIndexDescription;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 4

    .line 3290
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getGlobalSecondaryIndexes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3291
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->globalSecondaryIndexes:Ljava/util/List;

    .line 3294
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3295
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->globalSecondaryIndexes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withItemCount(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 1680
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->itemCount:Ljava/lang/Long;

    return-object p0
.end method

.method public withKeySchema(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/TableDescription;"
        }
    .end annotation

    .line 1141
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->setKeySchema(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withKeySchema([Lcom/amazonaws/services/dynamodbv2/model/KeySchemaElement;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 4

    .line 1029
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getKeySchema()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->keySchema:Ljava/util/List;

    .line 1032
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1033
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->keySchema:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withLatestStreamArn(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 3859
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->latestStreamArn:Ljava/lang/String;

    return-object p0
.end method

.method public withLatestStreamLabel(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 3799
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->latestStreamLabel:Ljava/lang/String;

    return-object p0
.end method

.method public withLocalSecondaryIndexes(Ljava/util/Collection;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;",
            ">;)",
            "Lcom/amazonaws/services/dynamodbv2/model/TableDescription;"
        }
    .end annotation

    .line 2480
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->setLocalSecondaryIndexes(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withLocalSecondaryIndexes([Lcom/amazonaws/services/dynamodbv2/model/LocalSecondaryIndexDescription;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 4

    .line 2285
    invoke-virtual {p0}, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->getLocalSecondaryIndexes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2286
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->localSecondaryIndexes:Ljava/util/List;

    .line 2289
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2290
    iget-object v3, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->localSecondaryIndexes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withProvisionedThroughput(Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 1566
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->provisionedThroughput:Lcom/amazonaws/services/dynamodbv2/model/ProvisionedThroughputDescription;

    return-object p0
.end method

.method public withStreamSpecification(Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 3614
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->streamSpecification:Lcom/amazonaws/services/dynamodbv2/model/StreamSpecification;

    return-object p0
.end method

.method public withTableArn(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 1728
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableArn:Ljava/lang/String;

    return-object p0
.end method

.method public withTableName(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableName:Ljava/lang/String;

    return-object p0
.end method

.method public withTableSizeBytes(Ljava/lang/Long;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 1623
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableSizeBytes:Ljava/lang/Long;

    return-object p0
.end method

.method public withTableStatus(Lcom/amazonaws/services/dynamodbv2/model/TableStatus;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 1458
    invoke-virtual {p1}, Lcom/amazonaws/services/dynamodbv2/model/TableStatus;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withTableStatus(Ljava/lang/String;)Lcom/amazonaws/services/dynamodbv2/model/TableDescription;
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/amazonaws/services/dynamodbv2/model/TableDescription;->tableStatus:Ljava/lang/String;

    return-object p0
.end method
