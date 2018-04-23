.class public final enum Lcom/google/android/gms/internal/zzebe;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzebe;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzmni:Lcom/google/android/gms/internal/zzebe;

.field public static final enum zzmnj:Lcom/google/android/gms/internal/zzebe;

.field private static final synthetic zzmnk:[Lcom/google/android/gms/internal/zzebe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzebe;

    const-string v1, "SERVER_RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzebe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzebe;->zzmni:Lcom/google/android/gms/internal/zzebe;

    new-instance v0, Lcom/google/android/gms/internal/zzebe;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzebe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnj:Lcom/google/android/gms/internal/zzebe;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzebe;

    sget-object v1, Lcom/google/android/gms/internal/zzebe;->zzmni:Lcom/google/android/gms/internal/zzebe;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzebe;->zzmnj:Lcom/google/android/gms/internal/zzebe;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnk:[Lcom/google/android/gms/internal/zzebe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzebe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzebe;->zzmnk:[Lcom/google/android/gms/internal/zzebe;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzebe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzebe;

    return-object v0
.end method
