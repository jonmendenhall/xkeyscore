.class public final enum Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;
.super Ljava/lang/Enum;
.source "RequestPaymentConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Payer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

.field public static final enum BucketOwner:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

.field public static final enum Requester:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    const-string v1, "Requester"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->Requester:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    new-instance v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    const-string v1, "BucketOwner"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->BucketOwner:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    sget-object v1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->Requester:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->BucketOwner:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->$VALUES:[Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;
    .locals 1

    .line 30
    const-class v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->$VALUES:[Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    return-object v0
.end method
