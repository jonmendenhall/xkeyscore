.class public final enum Lcom/amazonaws/services/s3/model/CryptoMode;
.super Ljava/lang/Enum;
.source "CryptoMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/CryptoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/CryptoMode;

.field public static final enum AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

.field public static final enum EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

.field public static final enum StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/amazonaws/services/s3/model/CryptoMode;

    const-string v1, "EncryptionOnly"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    .line 32
    new-instance v0, Lcom/amazonaws/services/s3/model/CryptoMode;

    const-string v1, "AuthenticatedEncryption"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/model/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    .line 44
    new-instance v0, Lcom/amazonaws/services/s3/model/CryptoMode;

    const-string v1, "StrictAuthenticatedEncryption"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amazonaws/services/s3/model/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    const/4 v0, 0x3

    .line 23
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/CryptoMode;

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoMode;->StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->$VALUES:[Lcom/amazonaws/services/s3/model/CryptoMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CryptoMode;
    .locals 1

    .line 23
    const-class v0, Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/CryptoMode;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/CryptoMode;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->$VALUES:[Lcom/amazonaws/services/s3/model/CryptoMode;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/CryptoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/CryptoMode;

    return-object v0
.end method
