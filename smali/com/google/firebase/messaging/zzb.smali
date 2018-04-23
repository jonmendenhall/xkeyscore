.class public final Lcom/google/firebase/messaging/zzb;
.super Ljava/lang/Object;


# instance fields
.field private zzmbh:Ljava/lang/String;

.field private zzmbi:Ljava/lang/String;

.field private zzmbj:Ljava/lang/String;

.field private zzmbk:Ljava/lang/String;

.field private zzmbl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_exp_set"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmbh:Ljava/lang/String;

    const-string v0, "_exp_activate"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmbi:Ljava/lang/String;

    const-string v0, "_exp_timeout"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmbj:Ljava/lang/String;

    const-string v0, "_exp_expire"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmbk:Ljava/lang/String;

    const-string v0, "_exp_clear"

    iput-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmbl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzbqt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmbi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbqu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmbj:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbqv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmbk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbqw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/zzb;->zzmbl:Ljava/lang/String;

    return-object v0
.end method
