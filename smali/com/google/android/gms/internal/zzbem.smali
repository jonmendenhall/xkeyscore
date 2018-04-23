.class final Lcom/google/android/gms/internal/zzbem;
.super Lcom/google/android/gms/common/api/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzm<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/zzbeo;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfkf:Lcom/google/android/gms/internal/zzbeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbeh;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbdy;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/zzm;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbem;->zzfkf:Lcom/google/android/gms/internal/zzbeh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/zzm;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbeo;

    new-instance v0, Lcom/google/android/gms/internal/zzben;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzben;-><init>(Lcom/google/android/gms/internal/zzbem;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbem;->zzfkf:Lcom/google/android/gms/internal/zzbeh;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbeh;->zzfjk:Lcom/google/android/gms/internal/zzbec;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbeh;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbeh;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbeh;->zzfjk:Lcom/google/android/gms/internal/zzbec;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbec;->zzafv()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzfkq;->zzpqs:[B

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/zzbeh;->zzfke:Lcom/google/android/gms/internal/zzbec;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbeh;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    array-length v2, v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/zzbeh;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzbeh;->zzfke:Lcom/google/android/gms/internal/zzbec;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzbec;->zzafv()[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzfkq;->zzpqz:[B

    :cond_1
    iget-object v2, v1, Lcom/google/android/gms/internal/zzbeh;->zzfjr:Lcom/google/android/gms/internal/zzfkq;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzfjs;->zzc(Lcom/google/android/gms/internal/zzfjs;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzbeh;->zzfjy:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbes;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbem;->zzfkf:Lcom/google/android/gms/internal/zzbeh;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzbes;->zza(Lcom/google/android/gms/internal/zzbeq;Lcom/google/android/gms/internal/zzbeh;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zzm;->zzu(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method
