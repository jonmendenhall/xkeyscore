.class public final enum Lcom/amazonaws/services/s3/model/Region;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Mumbai:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Seoul:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum CA_Montreal:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum CN_Beijing:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Frankfurt:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum EU_London:Lcom/amazonaws/services/s3/model/Region;

.field public static final S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

.field public static final enum SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_East_2:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_GovCloud:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_Standard:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_West:Lcom/amazonaws/services/s3/model/Region;

.field public static final enum US_West_2:Lcom/amazonaws/services/s3/model/Region;


# instance fields
.field private final regionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 56
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_Standard"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    .line 68
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_East_2"

    const-string v2, "us-east-2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_East_2:Lcom/amazonaws/services/s3/model/Region;

    .line 85
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_West"

    const-string v2, "us-west-1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_West:Lcom/amazonaws/services/s3/model/Region;

    .line 97
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_West_2"

    const-string v2, "us-west-2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_West_2:Lcom/amazonaws/services/s3/model/Region;

    .line 103
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "US_GovCloud"

    const-string v2, "s3-us-gov-west-1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->US_GovCloud:Lcom/amazonaws/services/s3/model/Region;

    .line 114
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "EU_Ireland"

    const-string v2, "eu-west-1"

    const-string v8, "EU"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

    .line 126
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "EU_London"

    const-string v2, "eu-west-2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->EU_London:Lcom/amazonaws/services/s3/model/Region;

    .line 139
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "EU_Frankfurt"

    const-string v2, "eu-central-1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->EU_Frankfurt:Lcom/amazonaws/services/s3/model/Region;

    .line 151
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Mumbai"

    const-string v2, "ap-south-1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Mumbai:Lcom/amazonaws/services/s3/model/Region;

    .line 163
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Singapore"

    const-string v2, "ap-southeast-1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

    .line 175
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Sydney"

    const-string v2, "ap-southeast-2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

    .line 187
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Tokyo"

    const-string v2, "ap-northeast-1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

    .line 199
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "AP_Seoul"

    const-string v2, "ap-northeast-2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->AP_Seoul:Lcom/amazonaws/services/s3/model/Region;

    .line 211
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "SA_SaoPaulo"

    const-string v2, "sa-east-1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

    .line 223
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "CA_Montreal"

    const-string v2, "ca-central-1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->CA_Montreal:Lcom/amazonaws/services/s3/model/Region;

    .line 232
    new-instance v0, Lcom/amazonaws/services/s3/model/Region;

    const-string v1, "CN_Beijing"

    const-string v2, "cn-north-1"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/amazonaws/services/s3/model/Region;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->CN_Beijing:Lcom/amazonaws/services/s3/model/Region;

    const/16 v0, 0x10

    .line 42
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/Region;

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_East_2:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_West:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_West_2:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->US_GovCloud:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->EU_Ireland:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->EU_London:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->EU_Frankfurt:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Mumbai:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Singapore:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Sydney:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v13

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Tokyo:Lcom/amazonaws/services/s3/model/Region;

    aput-object v1, v0, v14

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->AP_Seoul:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->SA_SaoPaulo:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->CA_Montreal:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/Region;->CN_Beijing:Lcom/amazonaws/services/s3/model/Region;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->$VALUES:[Lcom/amazonaws/services/s3/model/Region;

    const-string v0, "s3[-.]([^.]+)\\.amazonaws\\.com(\\.[^.]*)?"

    .line 244
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/model/Region;->S3_REGIONAL_ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    .line 255
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_3

    const-string v0, "US"

    .line 293
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "us-east-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 296
    :cond_0
    invoke-static {}, Lcom/amazonaws/services/s3/model/Region;->values()[Lcom/amazonaws/services/s3/model/Region;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 297
    iget-object v4, v3, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 298
    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create enum from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_3
    :goto_1
    sget-object p0, Lcom/amazonaws/services/s3/model/Region;->US_Standard:Lcom/amazonaws/services/s3/model/Region;

    return-object p0
.end method

.method private getFirstRegionId0()Ljava/lang/String;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Region;->regionIds:Ljava/util/List;

    const/4 v1, 0x0

    .line 276
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Region;
    .locals 1

    .line 42
    const-class v0, Lcom/amazonaws/services/s3/model/Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/Region;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/Region;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazonaws/services/s3/model/Region;->$VALUES:[Lcom/amazonaws/services/s3/model/Region;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/Region;

    return-object v0
.end method


# virtual methods
.method public getFirstRegionId()Ljava/lang/String;
    .locals 1

    .line 271
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/Region;->getFirstRegionId0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toAWSRegion()Lcom/amazonaws/regions/Region;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/Region;->getFirstRegionId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "s3.amazonaws.com"

    .line 313
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->getRegionByEndpoint(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v0

    return-object v0

    .line 315
    :cond_0
    invoke-static {v0}, Lcom/amazonaws/regions/RegionUtils;->getRegion(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/Region;->getFirstRegionId0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
