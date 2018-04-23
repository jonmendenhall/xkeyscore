.class public Lcom/google/android/gms/internal/zzffu$zza;
.super Lcom/google/android/gms/internal/zzfel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzffu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/zzffu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/zzffu$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/zzfel<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzpgu:Lcom/google/android/gms/internal/zzffu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzpgv:Lcom/google/android/gms/internal/zzffu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzpgw:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzffu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfel;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgu:Lcom/google/android/gms/internal/zzffu;

    sget v0, Lcom/google/android/gms/internal/zzffu$zzg;->zzphi:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzffu$zzf;->zzphb:Lcom/google/android/gms/internal/zzffu$zzf;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphd:I

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(Lcom/google/android/gms/internal/zzfio;Lcom/google/android/gms/internal/zzfio;)Lcom/google/android/gms/internal/zzfio;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzffu$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzffb;",
            "Lcom/google/android/gms/internal/zzffm;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphg:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_0
    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgu:Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphj:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    if-eqz v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    sget v3, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    invoke-virtual {v1, v3, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    goto :goto_0

    :goto_1
    check-cast v1, Lcom/google/android/gms/internal/zzffu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzffu;->zza(Lcom/google/android/gms/internal/zzffu;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/zzfek;)Lcom/google/android/gms/internal/zzfel;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzfel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzfel;->zzb(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzfhf;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu$zza;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffu;)V

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzfhf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzffu$zza;->zzd(Lcom/google/android/gms/internal/zzffb;Lcom/google/android/gms/internal/zzffm;)Lcom/google/android/gms/internal/zzffu$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzcvh()Lcom/google/android/gms/internal/zzfel;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu$zza;

    return-object v0
.end method

.method public final synthetic zzcxq()Lcom/google/android/gms/internal/zzfhe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgu:Lcom/google/android/gms/internal/zzffu;

    return-object v0
.end method

.method protected final zzcxr()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphi:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;Lcom/google/android/gms/internal/zzffu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    :cond_0
    return-void
.end method

.method public final zzcxs()Lcom/google/android/gms/internal/zzffu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    return-object v0
.end method

.method public final zzcxt()Lcom/google/android/gms/internal/zzffu;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    sget v3, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    invoke-virtual {v0, v3, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    goto :goto_0

    :goto_1
    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget v4, Lcom/google/android/gms/internal/zzffu$zzg;->zzphe:I

    invoke-virtual {v0, v4, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v1, :cond_1

    goto :goto_4

    :cond_1
    if-nez v4, :cond_2

    move v1, v5

    goto :goto_4

    :cond_2
    sget v4, Lcom/google/android/gms/internal/zzffu$zzg;->zzphc:I

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v6, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_2
    if-eqz v3, :cond_5

    sget v3, Lcom/google/android/gms/internal/zzffu$zzg;->zzphf:I

    if-eqz v1, :cond_4

    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/zzfim;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzfim;-><init>(Lcom/google/android/gms/internal/zzfhe;)V

    throw v1

    :cond_6
    return-object v0
.end method

.method public final synthetic zzcxu()Lcom/google/android/gms/internal/zzfhe;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    return-object v0
.end method

.method public final synthetic zzcxv()Lcom/google/android/gms/internal/zzfhe;
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    sget v3, Lcom/google/android/gms/internal/zzffu$zzg;->zzphh:I

    invoke-virtual {v0, v3, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfio;->zzbiy()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzffu$zza;->zzpgw:Z

    goto :goto_0

    :goto_1
    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget v4, Lcom/google/android/gms/internal/zzffu$zzg;->zzphe:I

    invoke-virtual {v0, v4, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v1, :cond_1

    goto :goto_4

    :cond_1
    if-nez v4, :cond_2

    move v1, v5

    goto :goto_4

    :cond_2
    sget v4, Lcom/google/android/gms/internal/zzffu$zzg;->zzphc:I

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v6, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_2
    if-eqz v3, :cond_5

    sget v3, Lcom/google/android/gms/internal/zzffu$zzg;->zzphf:I

    if-eqz v1, :cond_4

    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    if-nez v1, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/zzfim;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzfim;-><init>(Lcom/google/android/gms/internal/zzfhe;)V

    throw v1

    :cond_6
    return-object v0
.end method
