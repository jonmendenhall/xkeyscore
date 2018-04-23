.class final Lcom/google/android/gms/internal/zzcld;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjdt:Lcom/google/android/gms/internal/zzcim;

.field private synthetic zzjjb:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcla;Lcom/google/android/gms/internal/zzcim;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcld;->zzjdt:Lcom/google/android/gms/internal/zzcim;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcld;->zzjjb:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcld;->zzjdt:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzbal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcld;->zzjdt:Lcom/google/android/gms/internal/zzcim;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcld;->zzjjb:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcim;->zzi(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcld;->zzjdt:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzbah()V

    return-void
.end method
