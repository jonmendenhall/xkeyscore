.class public Lcom/amazonaws/internal/config/SignerConfig;
.super Ljava/lang/Object;
.source "SignerConfig.java"


# instance fields
.field private final signerType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazonaws/internal/config/SignerConfig;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/internal/config/SignerConfig;->getSignerType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/internal/config/SignerConfig;->signerType:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazonaws/internal/config/SignerConfig;->signerType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSignerType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazonaws/internal/config/SignerConfig;->signerType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazonaws/internal/config/SignerConfig;->signerType:Ljava/lang/String;

    return-object v0
.end method
