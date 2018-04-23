.class final Lcom/google/android/gms/internal/zzciw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjgo:Lcom/google/android/gms/internal/zzcir;

.field private synthetic zzjgp:Lcom/google/android/gms/internal/zzcgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcir;Lcom/google/android/gms/internal/zzcgl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzciw;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzciw;->zzjgp:Lcom/google/android/gms/internal/zzcgl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciw;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzbal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzciw;->zzjgo:Lcom/google/android/gms/internal/zzcir;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcir;->zza(Lcom/google/android/gms/internal/zzcir;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzciw;->zzjgp:Lcom/google/android/gms/internal/zzcgl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcim;->zzd(Lcom/google/android/gms/internal/zzcgl;)V

    return-void
.end method
