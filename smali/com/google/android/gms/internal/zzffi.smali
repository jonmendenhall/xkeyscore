.class final Lcom/google/android/gms/internal/zzffi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfji;


# instance fields
.field private final zzpfl:Lcom/google/android/gms/internal/zzffg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzffg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzffz;->zzc(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffg;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzffi;->zzpfl:Lcom/google/android/gms/internal/zzffg;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzffi;->zzpfl:Lcom/google/android/gms/internal/zzffg;

    iput-object p0, p1, Lcom/google/android/gms/internal/zzffg;->zzpga:Lcom/google/android/gms/internal/zzffi;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzffg;)Lcom/google/android/gms/internal/zzffi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffg;->zzpga:Lcom/google/android/gms/internal/zzffi;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzffg;->zzpga:Lcom/google/android/gms/internal/zzffi;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzffi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzffi;-><init>(Lcom/google/android/gms/internal/zzffg;)V

    return-object v0
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;)V
    .locals 1

    :try_start_0
    instance-of v0, p2, Lcom/google/android/gms/internal/zzfes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpfl:Lcom/google/android/gms/internal/zzffg;

    check-cast p2, Lcom/google/android/gms/internal/zzfes;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzffg;->zzb(ILcom/google/android/gms/internal/zzfes;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzffi;->zzpfl:Lcom/google/android/gms/internal/zzffg;

    check-cast p2, Lcom/google/android/gms/internal/zzfhe;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzffg;->zzb(ILcom/google/android/gms/internal/zzfhe;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzcwv()I
    .locals 1

    sget v0, Lcom/google/android/gms/internal/zzffu$zzg;->zzphn:I

    return v0
.end method
