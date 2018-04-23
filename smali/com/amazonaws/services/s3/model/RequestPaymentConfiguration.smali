.class public Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;
.super Ljava/lang/Object;
.source "RequestPaymentConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;
    }
.end annotation


# instance fields
.field private payer:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;


# direct methods
.method public constructor <init>(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;->payer:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    return-void
.end method


# virtual methods
.method public getPayer()Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;->payer:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    return-object v0
.end method

.method public setPayer(Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration;->payer:Lcom/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer;

    return-void
.end method
