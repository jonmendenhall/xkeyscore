.class final Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;
.super Lcom/intermedia/model/config/VerificationProvider$Builder;
.source "AutoParcel_VerificationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/config/AutoParcel_VerificationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private provider:Ljava/lang/String;

.field private final set$:Ljava/util/BitSet;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/intermedia/model/config/VerificationProvider$Builder;-><init>()V

    .line 81
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/config/VerificationProvider;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/intermedia/model/config/VerificationProvider$Builder;-><init>()V

    .line 81
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;->set$:Ljava/util/BitSet;

    .line 86
    invoke-virtual {p1}, Lcom/intermedia/model/config/VerificationProvider;->provider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;->provider(Ljava/lang/String;)Lcom/intermedia/model/config/VerificationProvider$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/config/VerificationProvider;
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 96
    new-array v0, v0, [Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    new-instance v0, Lcom/intermedia/model/config/AutoParcel_VerificationProvider;

    iget-object v1, p0, Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;->provider:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/intermedia/model/config/AutoParcel_VerificationProvider;-><init>(Ljava/lang/String;Lcom/intermedia/model/config/AutoParcel_VerificationProvider$1;)V

    return-object v0
.end method

.method public provider(Ljava/lang/String;)Lcom/intermedia/model/config/VerificationProvider$Builder;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/intermedia/model/config/AutoParcel_VerificationProvider$Builder;->provider:Ljava/lang/String;

    return-object p0
.end method
