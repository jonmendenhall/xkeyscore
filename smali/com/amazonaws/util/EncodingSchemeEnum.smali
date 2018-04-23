.class public abstract enum Lcom/amazonaws/util/EncodingSchemeEnum;
.super Ljava/lang/Enum;
.source "EncodingSchemeEnum.java"

# interfaces
.implements Lcom/amazonaws/util/EncodingScheme;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/util/EncodingSchemeEnum;",
        ">;",
        "Lcom/amazonaws/util/EncodingScheme;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/EncodingSchemeEnum;

.field public static final enum BASE16:Lcom/amazonaws/util/EncodingSchemeEnum;

.field public static final enum BASE32:Lcom/amazonaws/util/EncodingSchemeEnum;

.field public static final enum BASE64:Lcom/amazonaws/util/EncodingSchemeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/amazonaws/util/EncodingSchemeEnum$1;

    const-string v1, "BASE16"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/util/EncodingSchemeEnum$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/EncodingSchemeEnum;->BASE16:Lcom/amazonaws/util/EncodingSchemeEnum;

    .line 39
    new-instance v0, Lcom/amazonaws/util/EncodingSchemeEnum$2;

    const-string v1, "BASE32"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/util/EncodingSchemeEnum$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/EncodingSchemeEnum;->BASE32:Lcom/amazonaws/util/EncodingSchemeEnum;

    .line 52
    new-instance v0, Lcom/amazonaws/util/EncodingSchemeEnum$3;

    const-string v1, "BASE64"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/util/EncodingSchemeEnum$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/util/EncodingSchemeEnum;->BASE64:Lcom/amazonaws/util/EncodingSchemeEnum;

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Lcom/amazonaws/util/EncodingSchemeEnum;

    sget-object v1, Lcom/amazonaws/util/EncodingSchemeEnum;->BASE16:Lcom/amazonaws/util/EncodingSchemeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/util/EncodingSchemeEnum;->BASE32:Lcom/amazonaws/util/EncodingSchemeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/util/EncodingSchemeEnum;->BASE64:Lcom/amazonaws/util/EncodingSchemeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/util/EncodingSchemeEnum;->$VALUES:[Lcom/amazonaws/util/EncodingSchemeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazonaws/util/EncodingSchemeEnum$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/util/EncodingSchemeEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/EncodingSchemeEnum;
    .locals 1

    .line 23
    const-class v0, Lcom/amazonaws/util/EncodingSchemeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/util/EncodingSchemeEnum;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/util/EncodingSchemeEnum;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazonaws/util/EncodingSchemeEnum;->$VALUES:[Lcom/amazonaws/util/EncodingSchemeEnum;

    invoke-virtual {v0}, [Lcom/amazonaws/util/EncodingSchemeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/EncodingSchemeEnum;

    return-object v0
.end method


# virtual methods
.method public abstract encodeAsString([B)Ljava/lang/String;
.end method
