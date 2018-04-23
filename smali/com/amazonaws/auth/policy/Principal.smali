.class public Lcom/amazonaws/auth/policy/Principal;
.super Ljava/lang/Object;
.source "Principal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;,
        Lcom/amazonaws/auth/policy/Principal$Services;
    }
.end annotation


# static fields
.field public static final All:Lcom/amazonaws/auth/policy/Principal;

.field public static final AllServices:Lcom/amazonaws/auth/policy/Principal;

.field public static final AllUsers:Lcom/amazonaws/auth/policy/Principal;

.field public static final AllWebProviders:Lcom/amazonaws/auth/policy/Principal;


# instance fields
.field private final id:Ljava/lang/String;

.field private final provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "AWS"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->AllUsers:Lcom/amazonaws/auth/policy/Principal;

    .line 49
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "Service"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->AllServices:Lcom/amazonaws/auth/policy/Principal;

    .line 55
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "Federated"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->AllWebProviders:Lcom/amazonaws/auth/policy/Principal;

    .line 62
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "*"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->All:Lcom/amazonaws/auth/policy/Principal;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/policy/Principal$Services;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null AWS service name specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal$Services;->getServiceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    const-string p1, "Service"

    .line 79
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 116
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null web identity provider specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;->getWebIdentityProvider()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    const-string p1, "Federated"

    .line 119
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null AWS account ID specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "-"

    const-string v1, ""

    .line 105
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    const-string p1, "AWS"

    .line 106
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    const-string v0, "AWS"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "-"

    const-string v0, ""

    .line 90
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 92
    :cond_0
    iput-object p2, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

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

    .line 271
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/auth/policy/Principal;

    if-nez v2, :cond_2

    return v1

    .line 275
    :cond_2
    check-cast p1, Lcom/amazonaws/auth/policy/Principal;

    .line 277
    invoke-virtual {p0}, Lcom/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v1, v0

    .line 257
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
