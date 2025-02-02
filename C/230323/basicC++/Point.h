#ifndef __POINT_H_
#define __POINT_H_

class Point
{
public:
	bool InitMembers(int xpos, int ypos);
	int GetX() const;
	int GetY() const;
	bool SetX(int xpos);
	bool SetY(int ypos);
private:
	int x;
	int y;
};

#endif 