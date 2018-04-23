.class final Lcom/intermedia/model/AutoParcel_VerificationId$Builder;
.super Lcom/intermedia/model/VerificationId$Builder;
.source "AutoParcel_VerificationId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_VerificationId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private callsEnabled:Z

.field private expires:Ljava/util/Date;

.field private phone:Ljava/lang/String;

.field private retrySeconds:J

.field private final set$:Ljava/util/BitSet;

.field private verificationId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/intermedia/model/VerificationId$Builder;-><init>()V

    .line 142
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/VerificationId;)V
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/intermedia/model/VerificationId$Builder;-><init>()V

    .line 142
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->set$:Ljava/util/BitSet;

    .line 151
    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->callsEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->callsEnabled(Z)Lcom/intermedia/model/VerificationId$Builder;

    .line 152
    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->retrySeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->retrySeconds(J)Lcom/intermedia/model/VerificationId$Builder;

    .line 153
    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->expires()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->expires(Ljava/util/Date;)Lcom/intermedia/model/VerificationId$Builder;

    .line 154
    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->phone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->phone(Ljava/lang/String;)Lcom/intermedia/model/VerificationId$Builder;

    .line 155
    invoke-virtual {p1}, Lcom/intermedia/model/VerificationId;->verificationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->verificationId(Ljava/lang/String;)Lcom/intermedia/model/VerificationId$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/intermedia/model/VerificationId;
    .locals 10

    .line 189
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    const-string v0, "callsEnabled"

    const-string v2, "retrySeconds"

    const-string v3, "expires"

    const-string v4, "phone"

    const-string v5, "verificationId"

    .line 190
    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 195
    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_2
    new-instance v0, Lcom/intermedia/model/AutoParcel_VerificationId;

    iget-boolean v3, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->callsEnabled:Z

    iget-wide v4, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->retrySeconds:J

    iget-object v6, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->expires:Ljava/util/Date;

    iget-object v7, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->phone:Ljava/lang/String;

    iget-object v8, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->verificationId:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/intermedia/model/AutoParcel_VerificationId;-><init>(ZJLjava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_VerificationId$1;)V

    return-object v0
.end method

.method public callsEnabled(Z)Lcom/intermedia/model/VerificationId$Builder;
    .locals 1

    .line 159
    iput-boolean p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->callsEnabled:Z

    .line 160
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public expires(Ljava/util/Date;)Lcom/intermedia/model/VerificationId$Builder;
    .locals 1

    .line 171
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->expires:Ljava/util/Date;

    .line 172
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public phone(Ljava/lang/String;)Lcom/intermedia/model/VerificationId$Builder;
    .locals 1

    .line 177
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->phone:Ljava/lang/String;

    .line 178
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public retrySeconds(J)Lcom/intermedia/model/VerificationId$Builder;
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->retrySeconds:J

    .line 166
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->set$:Ljava/util/BitSet;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public verificationId(Ljava/lang/String;)Lcom/intermedia/model/VerificationId$Builder;
    .locals 1

    .line 183
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->verificationId:Ljava/lang/String;

    .line 184
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_VerificationId$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
