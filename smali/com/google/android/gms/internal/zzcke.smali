.class final Lcom/google/android/gms/internal/zzcke;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjhz:Lcom/google/android/gms/internal/zzckc;

.field private synthetic zzjia:Lcom/google/android/gms/internal/zzckf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckc;Lcom/google/android/gms/internal/zzckf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcke;->zzjhz:Lcom/google/android/gms/internal/zzckc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcke;->zzjia:Lcom/google/android/gms/internal/zzckf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjhz:Lcom/google/android/gms/internal/zzckc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcke;->zzjia:Lcom/google/android/gms/internal/zzckf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzckc;->zza(Lcom/google/android/gms/internal/zzckc;Lcom/google/android/gms/internal/zzckf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjhz:Lcom/google/android/gms/internal/zzckc;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzckc;->zzjhn:Lcom/google/android/gms/internal/zzckf;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcke;->zzjhz:Lcom/google/android/gms/internal/zzckc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckg;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method
