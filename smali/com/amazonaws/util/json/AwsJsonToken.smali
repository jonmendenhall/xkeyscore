.class public final enum Lcom/amazonaws/util/json/AwsJsonToken;
.super Ljava/lang/Enum;
.source "AwsJsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/json/AwsJsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum BEGIN_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum END_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum END_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum FIELD_NAME:Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum UNKNOWN:Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum VALUE_BOOLEAN:Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum VALUE_NULL:Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum VALUE_NUMBER:Lcom/amazonaws/util/json/AwsJsonToken;

.field public static final enum VALUE_STRING:Lcom/amazonaws/util/json/AwsJsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 23
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 25
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "END_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->END_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 27
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "BEGIN_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 29
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "END_OBJECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->END_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 31
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "FIELD_NAME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->FIELD_NAME:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 33
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "VALUE_BOOLEAN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_BOOLEAN:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 35
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "VALUE_NULL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 37
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "VALUE_NUMBER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NUMBER:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 39
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "VALUE_STRING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_STRING:Lcom/amazonaws/util/json/AwsJsonToken;

    .line 41
    new-instance v0, Lcom/amazonaws/util/json/AwsJsonToken;

    const-string v1, "UNKNOWN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/amazonaws/util/json/AwsJsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->UNKNOWN:Lcom/amazonaws/util/json/AwsJsonToken;

    const/16 v0, 0xa

    .line 21
    new-array v0, v0, [Lcom/amazonaws/util/json/AwsJsonToken;

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->END_ARRAY:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->BEGIN_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->END_OBJECT:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->FIELD_NAME:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_BOOLEAN:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_NUMBER:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->VALUE_STRING:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amazonaws/util/json/AwsJsonToken;->UNKNOWN:Lcom/amazonaws/util/json/AwsJsonToken;

    aput-object v1, v0, v11

    sput-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->$VALUES:[Lcom/amazonaws/util/json/AwsJsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonToken;
    .locals 1

    .line 21
    const-class v0, Lcom/amazonaws/util/json/AwsJsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/json/AwsJsonToken;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/json/AwsJsonToken;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazonaws/util/json/AwsJsonToken;->$VALUES:[Lcom/amazonaws/util/json/AwsJsonToken;

    invoke-virtual {v0}, [Lcom/amazonaws/util/json/AwsJsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/json/AwsJsonToken;

    return-object v0
.end method
