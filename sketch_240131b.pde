#include <iostream>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <unordered_map>
#include <algorithm>

using namespace std;

enum Direction { UP, DOWN, LEFT, RIGHT };

// 正しいフルーツの成長順
unordered_map<int, string> fruitMap = {
    {2, "🍒"}, {4, "🍓"}, {8, "🍇"}, {16, "🍋"},
    {32, "🍊"}, {64, "🍑"}, {128, "🍍"}, {256, "🍎"},
    {512, "🍏"}, {1024, "🍈"}, {2048, "🍉"}
};

class Board {
private:
    vector<vector<int>> board;
    int size;

public:
    Board(int s) : size(s), board(s, vector<int>(s, 0)) {
        addTile();
        addTile();
    }

    void printFruitOrder() {
        cout << "フルーツの成長順:\n";
        vector<int> keys;
        for (const auto &pair : fruitMap) {
            keys.push_back(pair.first);
        }
        sort(keys.begin(), keys.end());
        for (int key : keys) {
            cout << fruitMap[key] << " ";
        }
        cout << endl << endl;
    }

    void printBoard() {
        for (const auto &row : board) {
            for (const auto &tile : row) {
                if (tile == 0)
                    cout << ".\t";
                else
                    cout << fruitMap[tile] << "\t";
            }
            cout << endl;
        }
    }

    bool move(Direction dir) {
        vector<vector<int>> previous = board;
        switch (dir) {
        case UP:
            moveUp();
            break;
        case DOWN:
            moveDown();
            break;
        case LEFT:
            moveLeft();
            break;
        case RIGHT:
            moveRight();
            break;
        }
        if (previous != board) {
            addTile();
            return true;
        }
        return false;
    }

    bool isGameOver() {
        for (int i = 0; i < size; ++i) {
            for (int j = 0; j < size; ++j) {
                if (board[i][j] == 0) return false;
                if (i > 0 && board[i][j] == board[i - 1][j]) return false;
                if (i < size - 1 && board[i][j] == board[i + 1][j]) return false;
                if (j > 0 && board[i][j] == board[i][j - 1]) return false;
                if (j < size - 1 && board[i][j] == board[i][j + 1]) return false;
            }
        }
        return true;
    }

private:
    void addTile() {
        vector<pair<int, int>> emptyTiles;
        for (int i = 0; i < size; ++i) {
            for (int j = 0; j < size; ++j) {
                if (board[i][j] == 0) {
                    emptyTiles.emplace_back(i, j);
                }
            }
        }
        if (!emptyTiles.empty()) {
            auto [x, y] = emptyTiles[rand() % emptyTiles.size()];
            board[x][y] = (rand() % 10 == 0) ? 4 : 2;
        }
    }

    void moveUp() {
        for (int col = 0; col < size; ++col) {
            vector<int> newCol(size, 0);
            auto it = newCol.begin();
            for (int row = 0; row < size; ++row) {
                if (board[row][col] != 0) {
                    *it++ = board[row][col];
                }
            }
            for (int i = 0; i < size - 1; ++i) {
                if (newCol[i] == newCol[i + 1] && newCol[i] != 0) {
                    newCol[i] *= 2;
                    newCol[i + 1] = 0;
                }
            }
            it = newCol.begin();
            for (int row = 0; row < size; ++row) {
                board[row][col] = (newCol[row] != 0) ? newCol[row] : 0;
            }
        }
    }

    void moveDown() {
        for (int col = 0; col < size; ++col) {
            vector<int> newCol(size, 0);
            auto it = newCol.rbegin();
            for (int row = size - 1; row >= 0; --row) {
                if (board[row][col] != 0) {
                    *it++ = board[row][col];
                }
            }
            for (int i = size - 1; i > 0; --i) {
                if (newCol[i] == newCol[i - 1] && newCol[i] != 0) {
                    newCol[i] *= 2;
                    newCol[i - 1] = 0;
                }
            }
            it = newCol.rbegin();
            for (int row = size - 1; row >= 0; --row) {
                board[row][col] = (newCol[row] != 0) ? newCol[row] : 0;
            }
        }
    }

    void moveLeft() {
        for (int row = 0; row < size; ++row) {
            vector<int> newRow(size, 0);
            auto it = newRow.begin();
            for (int col = 0; col < size; ++col) {
                if (board[row][col] != 0) {
                    *it++ = board[row][col];
                }
            }
            for (int i = 0; i < size - 1; ++i) {
                if (newRow[i] == newRow[i + 1] && newRow[i] != 0) {
                    newRow[i] *= 2;
                    newRow[i + 1] = 0;
                }
            }
            it = newRow.begin();
            for (int col = 0; col < size; ++col) {
                board[row][col] = (newRow[col] != 0) ? newRow[col] : 0;
            }
        }
    }

    void moveRight() {
        for (int row = 0; row < size; ++row) {
            vector<int> newRow(size, 0);
            auto it = newRow.rbegin();
            for (int col = size - 1; col >= 0; --col) {
                if (board[row][col] != 0) {
                    *it++ = board[row][col];
                }
            }
            for (int i = size - 1; i > 0; --i) {
                if (newRow[i] == newRow[i - 1] && newRow[i] != 0) {
                    newRow[i] *= 2;
                    newRow[i - 1] = 0;
                }
            }
            it = newRow.rbegin();
            for (int col = size - 1; col >= 0; --col) {
                board[row][col] = (newRow[col] != 0) ? newRow[col] : 0;
            }
        }
    }
};

int main() {
    srand(static_cast<unsigned int>(time(0)));
    Board game(4);
    game.printFruitOrder(); // フルーツの成長順を表示
    while (true) {
        game.printBoard();
        if (game.isGameOver()) {
            cout << "Game Over!" << endl;
            break;
        }
        char move;
        cout << "Enter move (w/a/s/d): ";
        cin >> move;
        switch (move) {
        case 'w': game.move(UP); break;
        case 's': game.move(DOWN); break;
        case 'a': game.move(LEFT); break;
        case 'd': game.move(RIGHT); break;
        default: cout << "Invalid move!" << endl; break;
        }
    }
    return 0;
}
