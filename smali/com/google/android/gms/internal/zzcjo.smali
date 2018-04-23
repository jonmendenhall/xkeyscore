.class final Lcom/google/android/gms/internal/zzcjo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzecs:Z

.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjo;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcjo;->zzecs:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjo;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcjo;->zzecs:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcjn;->zza(Lcom/google/android/gms/internal/zzcjn;Z)V

    return-void
.end method
