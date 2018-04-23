.class final Lcom/google/android/gms/internal/zzchw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjcn:Z

.field private synthetic zzjco:Lcom/google/android/gms/internal/zzchv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchv;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzchw;->zzjco:Lcom/google/android/gms/internal/zzchv;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzchw;->zzjcn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzchw;->zzjco:Lcom/google/android/gms/internal/zzchv;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzchv;->zza(Lcom/google/android/gms/internal/zzchv;)Lcom/google/android/gms/internal/zzcim;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzchw;->zzjcn:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcim;->zzbo(Z)V

    return-void
.end method
